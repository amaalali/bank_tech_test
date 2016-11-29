class Statement
  def initialize
    @header = 'date       || credit || debit   || balance'
  end

  def print_statement(transaction_history)
    puts @header
  end

  def self.print_statement(transaction_history)
    print_statement
    # puts @header
  end
end
