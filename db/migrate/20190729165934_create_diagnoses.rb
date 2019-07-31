class CreateDiagnoses < ActiveRecord::Migration[5.2]
  def change
    create_table :diagnoses do |t|
      t.string :coding_system
      t.string :code
      t.text :description
      t.references :patient_diagnoses
      t.references :chronic_condition
      t.integer :admission_id
      t.timestamps
    end
  end
end
