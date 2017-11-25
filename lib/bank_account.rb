class BankAccount
  attr_accessor :balance, :status

  def initialize(name, b=1000, s="open")
    @name = name
    @balance = b
    @status = s
  end

  def name
    @name
  end

  def deposit(deposit)
    self.balance += deposit
  end

  def display_balance
     "Your balance is $#{self.balance}."
  end

  def valid?
    if self.status == "open" && self.balance > 0
       true
    else
       false
    end
  end

  def close_account
    self.status = "closed"
  end

end
