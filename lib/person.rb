class Person
  attr_reader :name, :cash, :banks
  def initialize(name, cash)
    @name = name
    @cash = cash
    @banks = []
  end

  def deposit(bank, amount)
    bank.reserves += amount
    @cash -= amount

    puts "#{self.name} has deposited amount into #{bank.name}"
  end

  def balance
    balances = {}
    self.banks[0].accounts[0].banks.each do |bank|
       balances[bank.name] = bank.reserves
    end
    balances
  end
end
