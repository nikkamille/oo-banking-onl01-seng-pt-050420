class Transfer
  
  attr_accessor :amount, :status
  attr_reader :sender, :receiver
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending" 
  end
  
  def valid?
    sender.valid? && receiver.valid? 
  end
  
  def execute_transaction
    if sender.balance > amount && status =
      sender.balance -= amount
      receiver.balance += amount
      @status = "complete"
    elsif @status == "complete"
      sender.balance
      receiver.balance
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
  
  def reverse_transfer
    
  end
  
end
