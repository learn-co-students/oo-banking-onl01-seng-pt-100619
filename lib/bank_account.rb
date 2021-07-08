class BankAccount
    attr_accessor :balance, :status
    attr_reader :name
    
    def initialize(name)
      @name = name 
      @balance = 1000
      @status = "open"
    end 
    def name 
      @name 
    end 
    
    def deposit(new_money_amount)
      @balance = @balance + new_money_amount
      @balance
    end 
    
    def display_balance
      return  "Your balance is $#{balance}."
    end 
    
    def valid?
        if @status == "open" && @balance > 0 
        return true 
      else 
        return false 
      end 
    end 
    
  def close_account
    
    @status = "closed"
    @status
    
  end 
end
