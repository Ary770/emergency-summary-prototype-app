require 'test_helper'

class DiagnosisTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @diagnosis = Diagnosis.new
  end

  test "should not save diagnosis without description" do
    @diagnosis.code = 'S23.101'
    assert_not @diagnosis.save, "Saved the diagnosis without a description"
  end

  test "should not save diagnosis without code" do
    @diagnosis.description = 'diagnosis description'
    assert_not @diagnosis.save, "Saved the diagnosis without a code"
  end
end
