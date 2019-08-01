class DiagnosticProcedure < ApplicationRecord
  belongs_to :patient

  validates :description, :moment, presence: true
end
