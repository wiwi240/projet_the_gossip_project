class CreatePrivateMessages < ActiveRecord::Migration[8.0]
  def change
    create_table :private_messages do |t|
      t.text :content
      t.integer :sender_id # Force l'usage d'un integer simple sans contrainte
      t.timestamps
    end
  end
end