require 'pry'
class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @receiver = receiver
    @sender = sender 
    @amount = amount
    @status = "pending"
  end
  
  def valid? 
    status_both = sender.BankAccount.status + receiver.BankAccount.status
    
    #valid if both accounts status == "open" and balance > 0 
    #should reject transfer if accounts aren't valid.. or if balance <=0
    
    #pry says: @receiver=#<BankAccount:0x0000000002c3c858 @balance=1000, @name="Avi", @status="open">,
    #pry says: @sender=#<BankAccount:0x0000000002c3c6a0
    # binding.pry
    if status_both == "open" && sender.balance > 0
      self.transfer_status = "complete"
    else 
      self.transfer_status = "rejected"
    end
  end
end
