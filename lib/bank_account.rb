require 'pry'

class BankAccount
  attr_reader :name,:balance, :status


  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(amount)
    @balance += amount
    #binding.pry

  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid?
    #@broke.balance = 0
    #@status = 
  end

  def close_account
    @status = "closed"
    #binding.pry
  end



end
