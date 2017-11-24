class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.text :description
      t.string :photos
      t.integer :user_id
      t.integer :pet_id

      t.timestamps
    end
    add_index :albums, :user_id
    add_index :albums, :pet_id
  end
end
