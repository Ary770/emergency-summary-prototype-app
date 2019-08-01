class OrderFrequency < ApplicationRecord
  has_many :medication_orders
  enum frequency_unit: [:hour]

  validates :value, :frequency_unit,  presence: true
end
