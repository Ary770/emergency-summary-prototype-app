require 'test_helper'

class MedicationOrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @medication = medication_orders(:one)
  end

  test "should not save medication without a name" do
    @medication.name = nil
    assert_not @medication.save, "Saved the medication without a name"
  end

  test "should not save medication without a mass_unit" do
    @medication.mass_unit = nil
    assert_not @medication.save, "Saved the medication without a mass_unit"
  end

  test "should not save medication without a dosage" do
    @medication.dosage = nil
    assert_not @medication.save, "Saved the medication without a dosage"
  end

  test "should not save medication without a necessity" do
    @medication.necessity = nil
    assert_not @medication.save, "Saved the medication without a necessity"
  end

  test "should not save medication without a medication_route" do
    @medication.medication_route = nil
    assert_not @medication.save, "Saved the medication without a medication_route"
  end

end
