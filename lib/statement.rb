class Statement
  def initialize
    @header = 'date       || credit || debit   || balance'
  end

  def print_statement
    puts @header
  end
end
