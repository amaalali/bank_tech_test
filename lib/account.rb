class Account
  def initialize
    @balance = 0
    @history = []
  end

  def balance
    @balance
  end

  def history
    @history
  end

  def desposit(amount)
    transaction = Transaction.new("deposit",amount)
    @history << transaction
  end
end
