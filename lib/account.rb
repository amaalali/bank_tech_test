require 'statement'

class Account
  def initialize
    @transaction_history = []
  end

  def balance
    return 0 if @transaction_history.size == 0
    to_sum =  history.map do |transaction|
                if transaction.type == "deposit"
                  transaction.amount
                elsif transaction.type == "withdrawal"
                  -1*transaction.amount
                end
              end
    to_sum.reduce(:+)
  end

  def history
    @transaction_history.dup
  end

  def desposit(amount)
    transaction = Transaction.new("deposit",amount)
    add_transaction(transaction)
  end

  def withdrawal(amount)
    transaction = Transaction.new("withdrawal",amount)
    add_transaction(transaction)
  end

  def statement
    statement = Statement.new
    statement.print_statement(@transaction_history)
  end

  private

  def add_transaction(transaction)
    @transaction_history << transaction
  end
end
