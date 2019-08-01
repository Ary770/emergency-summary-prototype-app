require 'test_helper'

class ObservationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @observation = observations(:one)
  end

  test "should not save observation without a description" do
    @observation.description = nil
    assert_not @observation.save, "Saved the observation without a description"
  end

  test "should not save observation without an admission_id" do
    @observation.admission_id = nil
    assert_not @observation.save, "Saved the observation without a admission_id"
  end

end
