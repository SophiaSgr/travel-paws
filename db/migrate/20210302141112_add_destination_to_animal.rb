class AddDestinationToAnimal < ActiveRecord::Migration[6.0]
  def change
      add_column :animals, :dropoff, :string
  end
end
