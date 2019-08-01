class Allergy < ApplicationRecord
  belongs_to :patient, optional: true

  validates :description, presence: true
end
