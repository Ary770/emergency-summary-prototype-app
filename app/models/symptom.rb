class Symptom < ApplicationRecord
  belongs_to :admission, optional: true

  validates :description, presence: true
end
