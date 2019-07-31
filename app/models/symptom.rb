class Symptom < ApplicationRecord
  belongs_to :admission, optional: true
end
