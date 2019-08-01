require 'test_helper'

class DiagnosticProcedureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @procedure = DiagnosticProcedure.new
  end

  test "should not save procedure without a patient_id" do
    @procedure.moment = DateTime.now
    @procedure.description = 'some procedure description'
    assert_not @procedure.save, "Saved the procedure without a patient_id"
  end

  test "should not save procedure without description" do
    @procedure.patient_id = 1
    @procedure.moment = DateTime.now
    assert_not @procedure.save, "Saved the procedure without a description"
  end

  test "should not save procedure without moment" do
    @procedure.patient_id = 1
    @procedure.description = 'some procedure description'
    assert_not @procedure.save, "Saved the procedure without a moment"
  end
end
