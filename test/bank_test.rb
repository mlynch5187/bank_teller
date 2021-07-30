require 'minitest/autorun'
require "./lib/bank"
require "./lib/person"

class BankTest < Minitest::Test
  def setup
    @wells_fargo = Bank.new("Wells Fargo")
    @chase = Bank.new("JP Morgan Chase")
    @minerva = Person.new("Minerva", 1000)
    @luna = Person.new("Luna", 500)
  end

  def test_it_exists
    assert_instance_of Bank, @wells_fargo
    assert_instance_of Bank, @chase
  end

  def test_account_can_opened
    @chase.open_account(@luna)

    assert_equal [@luna], @chase.accounts
    assert_equal [@chase], @luna.banks
  end

  def test_deposits
    @chase.open_account(@luna)

    assert_equal 500, @luna.cash
    assert_equal 0, @chase.reserves

    @luna.deposit(@chase, 100)

    assert_equal 400, @luna.cash
    assert_equal 100, @chase.reserves
  end

  def test_balance_can_be_retrieved
    @chase.open_account(@luna)

    assert_equal 500, @luna.cash
    assert_equal 0, @chase.reserves

    @luna.deposit(@chase, 100)

    assert_equal 400, @luna.cash
    assert_equal 100, @chase.reserves

    assert_equal "Luna has $100 in JP Morgan Chase", @luna.balances
  end
end
