require 'minitest/autorun'
require "./lib/bank"

class PersonTest < Minitest::Test
  def setup
    @wells_fargo = Bank.new("Wells Fargo")
  end

  def test_it_exists
    assert_instance_of Bank, @wells_fargo
  end
end
