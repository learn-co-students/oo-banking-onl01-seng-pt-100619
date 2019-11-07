class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @receiver = receiver
    @sender = sender 
    @amount = amount
    @status = "pending"
  end
  
  def valid? 
    # both_accounts = sender + receiver
    
    BankAccount.status == "open" && BankAccount.balance > 0
  end
  
end
