require 'test_helper'

class AdmissionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save admission without moment" do
    admission = Admission.new
    assert_not admission.save, "Saved the admission without a moment"
  end

end
