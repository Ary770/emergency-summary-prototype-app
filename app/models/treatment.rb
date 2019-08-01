class Treatment < ApplicationRecord
  belongs_to :patient, optional: true

  validates :description, :necessity, presence: true
end
