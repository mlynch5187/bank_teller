class Person
  attr_reader :name, :cash, :banks
  def initialize(name, cash)
    @name = name
    @cash = cash
    @banks = []
  end

  def deposit(bank, amount)
    bank.reserves += amount
    @cash - amount
  end
end
