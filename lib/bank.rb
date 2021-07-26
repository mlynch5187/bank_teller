class Bank
  attr_reader :name, :accounts
  def initialize(name)
    @name = name
    @accounts = []
  end

  def open_account(client)
    @accounts << client

    client.banks << self

    puts "An account has been opened for #{client.name}"
  end
end
