class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.string :tracker
      t.integer :user_id
      t.integer :pet_id

      t.timestamps
    end
    add_index :tracks, :user_id
    add_index :tracks, :pet_id
  end
end
