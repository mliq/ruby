require 'logger'

class BankAccount
  attr_reader :logger

  def initialize(name)
    @name = name
    @transactions = []
    @logger = Logger.new(STDOUT) # tell logger where to log to, STDOUT is the screen (standard output)
  end

  def deposit(amount)
    logger.debug "Depositing #{amount}"
    @transactions.push(amount)
  end

  def withdraw(amount)
    logger.debug "Withdrawing #{amount}"
    @transactions.push(-amount)
  end
end

account = BankAccount.new('Mike')
account.deposit(100)
account.withdraw(50)
