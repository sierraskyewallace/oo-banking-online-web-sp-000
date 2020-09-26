class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  def valid?
    sender.valid? && receiver.valid? ? true : false 
  end
  def execute_transaction
    if valid? && status = "pending"
      if amount < self.sender.balance
        self.sender.balance -= amount
        self.receiver.balance ++ amount
        self.status = "complete"
        
end
end