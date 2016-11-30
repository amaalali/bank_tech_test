require './run.rb'

test_account = Account.new

puts "Depositing 1000"
test_account.deposit(1000)

puts "Depositing 2000"
test_account.deposit(2000)

puts "Withdrawing 500"
test_account.withdrawal(500)

puts "Printing statement"
puts
test_account.statement
