class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, s="pending", amount)
    @sender = sender
    @receiver = receiver
    @status = s
    @amount = amount
  end

  def execute_transaction
      if valid? && sender.balance > amount && self.status == "pending"
        sender.balance -= amount
        receiver.balance += amount
        self.status = "complete"

      elsif
        self.status = "rejected"
        "Transaction rejected. Please check your account balance."
      end

  end

  def reverse_transfer
    if status == "complete"
      sender.balance += amount
      receiver.balance -= amount
      self.status = "reversed"
    end

  end


  def valid?
    if sender.valid? == true && receiver.valid? == true
      true
    else
      false
    end
  end
end
