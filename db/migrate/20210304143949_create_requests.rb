class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.references :animal, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :contract_signed
      t.text :message
      t.string :transportation_type
      t.integer :status

      t.timestamps
    end
  end
end
