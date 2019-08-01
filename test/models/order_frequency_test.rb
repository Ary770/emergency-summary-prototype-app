require 'test_helper'

class OrderFrequencyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @order_frequency = order_frequencies(:one)
  end

  test "should not save observation without a value" do
    @order_frequency.value = nil
    assert_not @order_frequency.save, "Saved the observation without a value"
  end

  test "should not save observation without a frequency_unit" do
    @order_frequency.frequency_unit = nil
    assert_not @order_frequency.save, "Saved the observation without a frequency_unit"
  end
end
