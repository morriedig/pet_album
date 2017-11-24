class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.integer :user_id
      t.integer :album_id

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :album_id
  end
end
