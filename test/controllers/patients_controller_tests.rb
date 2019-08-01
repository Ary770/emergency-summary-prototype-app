require 'test_helper'

class PatientsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get index" do
    get patients_url
    assert_response :success
  end

  test "should show patient" do
    patient = patients(:one)
    get patient_url(patient)
    assert_response :success
  end
end
