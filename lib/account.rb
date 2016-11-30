require_relative './statement.rb'
require_relative './transaction.rb'

class Account

  @STATEMENT_HEADER = 'date       || credit || debit   || balance'

  def initialize
    @transaction_history = []
  end

  def balance
    running_balance(@transaction_history)
  end

  def history
    @transaction_history.dup
  end

  def deposit(amount)
    transaction = Transaction.new("deposit",amount)
    add_transaction(transaction)
  end

  def withdrawal(amount)
    transaction = Transaction.new("withdrawal",amount)
    add_transaction(transaction)
  end

  def statement
    statement = Statement.new
    statement.print_statement(@transaction_history, summary_running_balances)
  end

  private

  def running_balance(transaction_section)
    return 0 if transaction_section.size == 0
    to_sum =  transaction_section.map do |transaction|
                if transaction.type == "deposit"
                  transaction.amount
                elsif transaction.type == "withdrawal"
                  -1*transaction.amount
                end
              end
    to_sum.reduce(:+)
  end

  def add_transaction(transaction)
    @transaction_history << transaction
  end

  def summary_running_balances
    arr = []
    for i in 0..@transaction_history.size
      arr << running_balance(@transaction_history[0..i])
    end
    arr
  end
end
