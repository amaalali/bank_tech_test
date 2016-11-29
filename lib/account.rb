class Account
  def initialize
    @history = []
  end

  def balance
    if @history.size == 0
      0
    else
      to_sum =  history.map do |transaction|
                  if transaction.type == "deposit"
                    transaction.amount
                  elsif transaction.type == "withdrawal"
                    -1*transaction.amount
                  end
                end
      to_sum.reduce(:+)
    end
  end

  def history
    @history
  end

  def desposit(amount)
    transaction = Transaction.new("deposit",amount)
    @history << transaction
  end

  def withdrawal(amount)
    transaction = Transaction.new("withdrawal",amount)
    @history << transaction
  end
end
