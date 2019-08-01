require 'test_helper'

class FacilityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save facility without a name" do
    facility = Facility.new
    assert_not facility.save, "Saved the facility without a name"
  end
end
