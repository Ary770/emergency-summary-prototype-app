class MedicationOrder < ApplicationRecord
  belongs_to :order_frequency, optional: true
  belongs_to :patient, optional: true

  enum mass_unit: [:mg]
  enum medication_route: [:PO, :IM, :SC]

  def route
    self.medication_route
  end

  def frequency
    self.order_frequency.value
  end
end
