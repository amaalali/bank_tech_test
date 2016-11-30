class Statement
  def initialize
    @header = 'date       || credit || debit   || balance'
  end

  def print_statement(transaction_history, balance_history)
    array = transaction_history.zip(balance_history)
    puts @header
    array.each do |transaction|
      date = transaction[0].date
      amount = transaction[0].amount.to_f
      deposit_padding = " "*(6 - amount.to_s.size)
      withdrawal_padding = " "*(5 - amount.to_s.size) unless 5 < amount.to_s.size
      balance = transaction[1].to_f
      if transaction[0].type == "deposit"
        puts "#{date} || #{deposit_padding}#{'%.2f' % amount}||         || #{'%.2f' % balance} "
      else
        puts "#{date} ||        || #{withdrawal_padding}#{'%.2f' % amount}  || #{'%.2f' % balance}"
      end
    end
  end
end
