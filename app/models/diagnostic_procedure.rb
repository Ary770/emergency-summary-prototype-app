class DiagnosticProcedure < ApplicationRecord
  belongs_to :patient, optional: true
end
