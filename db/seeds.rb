Admission.create!([
  {moment: "2018-03-18 05:07:00"}
])
Allergy.create!([
  {description: "hypersensitivity to aspirin or NSAIDs", patient_id: 1},
  {description: "gluten intolerance", patient_id: 1}
])
Diagnosis.create!([
  {coding_system: nil, code: "S82.101", description: "fracture of upper end of the right tibia", admission_id: 1, patient_diagnoses_id: nil, chronic_condition_id: nil},
  {coding_system: nil, code: "J45", description: "Asthma", admission_id: nil, patient_diagnoses_id: nil, chronic_condition_id: 1},
  {coding_system: nil, code: "S82.101A", description: "closed fracture in the right tibia", admission_id: nil, patient_diagnoses_id: 1, chronic_condition_id: nil}
])
DiagnosticProcedure.create!([
  {description: "exploratory radiography", moment: "2018-02-18 05:15:00", patient_id: 1}
])
Facility.create!([
  {name: "Blue Alps Ski Camp"}
])
MedicationOrder.create!([
  {name: "Acetaminophen", dosage: "500.0", necessity: "relieve pain", mass_unit: "mg", medication_route: "PO", order_frequency_id: 1, patient_id: 1},
  {name: "Naproxen", dosage: "500.0", necessity: "relieve swelling", mass_unit: "mg", medication_route: "PO", order_frequency_id: 2, patient_id: 1}
])
Observation.create!([
  {description: "No soft tissues were damaged", moment: nil, admission_id: 1}
])
OrderFrequency.create!([
  {value: "q4hr", frequency_unit: "hour"},
  {value: "q6hr", frequency_unit: "hour"}
])
Patient.create!([
  {first_name: "Thomas", last_name: "Schudel", middle_name: nil, mr: "30997", dob: "1976-01-01 00:00:00", gender: nil, admission_id: 1, facility_id: 1}
])
Symptom.create!([
  {description: "severe pain", admission_id: 1},
  {description: "swelling", admission_id: 1},
  {description: "limited bending of the joint", admission_id: 1}
])
Treatment.create!([
  {description: "bracing the right leg", necessity: "restrict the motion", patient_id: 1}
])
