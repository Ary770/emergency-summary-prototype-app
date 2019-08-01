require 'test_helper'

class PatientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @patient = patients(:one)
  end

  test "should not save patient without an admission_id" do
    @patient.admission_id = nil
    assert_not @patient.save, "Saved the patient without an admission_id"
  end
end
