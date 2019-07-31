class Observation < ApplicationRecord
  belongs_to :admission, optional: true
end
