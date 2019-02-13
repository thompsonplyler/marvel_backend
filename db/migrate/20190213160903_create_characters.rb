class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :energy
      t.integer :strength
      t.integer :durability
      t.integer :fighting
      t.integer :intelligence
      t.integer :speed
    end
  end
end
