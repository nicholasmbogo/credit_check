require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check_check'

class CreditCheckTest < Minitest::Test

  def test_credit_check_class_exists
    credit = CreditCheck.new

    assert_instance_of CreditCheck, credit
  end

  def test_can_double_a_single_number
    credit = CreditCheck.new

    assert_equal 10, credit.double(5)
  end

  def test_can_validate_valid_number
    credit = CreditCheck.new

    assert_equal "valid", credit.validate("4024007136512380")
  end

  def test_can_validate_invalid_number
    credit = CreditCheck.new

    assert_equal "invalid", credit.validate("5541801923795240")
  end
end
