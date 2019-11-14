class Transfer
  attr_accessor :transfer, :sender, :receiver, :status, :amount
  
  def initialize(sender,receiver,amount)
    @transfer = transfer
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    self.receiver.valid? && self.sender.valid? ? true : false
  end
  
  
  def execute_transaction
    if (!sender.valid?  || !receiver.valid?) || (sender.balance < amount)
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    elsif status != "complete"
       sender.balance -= amount
       receiver.balance += amount
       self.status = "complete"
    end
  end
  
  def reverse_transfer
      if self.status == "complete"
        self.status = "reversed"
        sender.balance += amount
        receiver.balance -= amount
      end
  end
  
  
  
  
end
