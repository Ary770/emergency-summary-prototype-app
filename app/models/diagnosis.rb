class Diagnosis < ApplicationRecord
  belongs_to :patient_diagnosis, class_name: "Patient", optional: true
  belongs_to :chronic_condition, class_name: "Patient", optional: true
  belongs_to :admission, optional: true

  validates :description, :code, presence: true

  def described_code
    "#{self.description} (#{self.code})"
  end
end
