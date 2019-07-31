class AddReferencesToDiagnoses < ActiveRecord::Migration[5.2]
  def change
    add_reference :diagnoses, :chronic_condition
  end
end
