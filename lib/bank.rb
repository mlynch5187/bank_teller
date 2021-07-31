class Bank
  attr_reader :name, :accounts
  attr_accessor :reserves

  def initialize(name)
    @name = name
    @accounts = []
    @reserves = 0
  end

  def open_account(client)
    @accounts << client

    client.banks << self

    puts "An account has been opened for #{client.name}"
  end
end
