class Person
  attr_reader :name,
              :cash,
              :banks

  def initialize(name, cash)
    @name = name
    @cash = cash
    @banks = []
  end

  def deposit(bank, amount)
    bank.reserves += amount
    @cash -= amount
    puts "#{name} has deposited #{amount} into #{bank.name}"
  end

  def balance
    balances = {}
    self.banks.each do |bank|
      balances[bank.name] = bank.reserves
    end
    balances
  end

  def withdrawal(bank, amount)
    self.banks.each do |place|
      if place.name === bank.name
      place.reserves -= amount
      end
    end
  end
end
