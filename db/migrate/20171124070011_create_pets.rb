class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.integer :age
      t.string :photo
      t.text :description

      t.timestamps
    end
  end
end
