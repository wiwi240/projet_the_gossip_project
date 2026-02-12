require 'faker'

JoinTableMessageRecipient.destroy_all
PrivateMessage.destroy_all
JoinTableGossipTag.destroy_all
Tag.destroy_all
Gossip.destroy_all
User.destroy_all
City.destroy_all

10.times { City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code) }

10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.sentence,
    email: Faker::Internet.email,
    age: rand(18..80),
    city: City.all.sample
  )
end

20.times { Gossip.create!(title: Faker::Book.title, content: Faker::Lorem.paragraph, user: User.all.sample) }
10.times { Tag.create!(title: "#" + Faker::Verb.base) }

Gossip.all.each do |gossip|
  JoinTableGossipTag.create!(gossip: gossip, tag: Tag.all.sample)
end

5.times do
  pm = PrivateMessage.create!(content: Faker::Lorem.sentence, sender: User.all.sample)
  JoinTableMessageRecipient.create!(private_message: pm, recipient: User.all.sample)
end