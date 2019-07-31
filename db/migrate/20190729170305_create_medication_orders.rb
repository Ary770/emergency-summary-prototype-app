class CreateMedicationOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :medication_orders do |t|
      t.string :name
      t.decimal :dosage
      t.text :necessity
      t.integer :mass_unit
      t.integer :medication_route
      t.integer :order_frequency_id
      t.timestamps
    end
  end
end
