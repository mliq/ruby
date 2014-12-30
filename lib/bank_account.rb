class BankAccount
  attr_reader :name, :transactions # makes name a property of BankAccount
  
  def initialize(name)
    @name = name
    @transactions = []
  end

  def deposit(amount)
    @transactions.push(amount)
    amount  
  end

end
