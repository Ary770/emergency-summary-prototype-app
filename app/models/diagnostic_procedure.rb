class DiagnosticProcedure < ApplicationRecord
  belongs_to :patient, optional: true

  validates :description, :moment, presence: true
end
