require 'test_helper'

class SymptomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save symptom without description" do
    symptom = Symptom.new
    assert_not symptom.save, "Saved the allergy without a description"
  end
end
