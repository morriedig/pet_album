class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.string :liked
      t.integer :user_id
      t.integer :album_id

      t.timestamps
    end
    add_index :likes, :user_id
    add_index :likes, :album_id
  end
end
