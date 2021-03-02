class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :animal_type
      t.decimal :weight
      t.string :size
      t.string :age
      t.text :medical_information
      t.string :race
      t.string :description
      t.references :shelter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
