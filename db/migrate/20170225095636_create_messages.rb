class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :title
      t.text :body
      t.datetime :read_at
      t.string :sender_id
      t.string :receiver_id

      t.timestamps
    end
  end
end
