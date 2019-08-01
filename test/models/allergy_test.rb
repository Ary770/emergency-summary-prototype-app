require 'test_helper'

class AllergyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save allergy without description" do
    allergy = Allergy.new
    assert_not allergy.save, "Saved the allergy without a description"
  end
end
