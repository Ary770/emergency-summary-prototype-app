class Admission < ApplicationRecord
    has_many :diagnoses
    has_many :symptoms
    has_many :observations
end
