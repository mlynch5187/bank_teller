class Bank
  attr_reader :name, :accounts
  def initialize(name)
    @name = name
    @accounts = []
  end

  def open_account(person)
    @accounts << person

    puts "An account has been opened for #{person}"
  end
end
