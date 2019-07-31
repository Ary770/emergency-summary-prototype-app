class AddPatientIdToMedicationOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :medication_orders, :patient_id, :integer
  end
end
