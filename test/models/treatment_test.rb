require 'test_helper'

class TreatmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @treatment = treatments(:one)
  end

  test "should not save treatment without a description" do
    @treatment.description = nil
    assert_not @treatment.save, "Saved the treatment without an description"
  end

  test "should not save treatment without a necessity" do
    @treatment.necessity = nil
    assert_not @treatment.save, "Saved the treatment without an necessity"
  end
end
