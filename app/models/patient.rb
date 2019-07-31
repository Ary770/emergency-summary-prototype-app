class Patient < ApplicationRecord
  belongs_to :gender, optional: true
  belongs_to :admission, optional: true
  belongs_to :facility, optional: true

  has_many :allergies
  has_many :diagnoses, class_name: "Diagnosis", foreign_key: "patient_diagnoses_id"
  has_many :chronic_conditions, class_name: "Diagnosis", foreign_key: "chronic_condition_id"
  has_many :medications, class_name: "MedicationOrder"
  has_many :diagnostic_procedures
  has_many :treatments

  enum gender: [:male, :female, :other]

  def format_name
    self.first_name + " " + self.last_name
  end

  def age
    now = Time.now.utc.to_date
    now.year - self.dob.year - ((now.month > self.dob.month || (now.month == self.dob.month && now.day >= self.dob.day)) ? 0 : 1)
  end

  def format_medications
    self.medications.map do |med|
      "#{med.name} #{med.dosage.to_i}#{med.mass_unit} #{med.route} #{med.frequency} to #{med.necessity}"
    end
  end

  def format_diagnostic_procedures
    self.diagnostic_procedures.map do |procedure|
      "#{procedure.description} on #{procedure.date} at #{procedure.time}"
    end
  end

  def format_treatments
    self.treatments.map { |treatment| "#{treatment.description} to #{treatment.necessity}" }
  end

end
