class CreateJoinTableMessageRecipients < ActiveRecord::Migration[8.0]
  def change
    create_table :join_table_message_recipients do |t|
      t.integer :private_message_id
      t.integer :recipient_id
      t.timestamps
    end
  end
end