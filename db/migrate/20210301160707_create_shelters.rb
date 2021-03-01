class CreateShelters < ActiveRecord::Migration[6.0]
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
