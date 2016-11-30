describe Statement do

  let(:statement)                 { Statement.new }
  let(:header)                    { 'date       || credit || debit   || balance' }
  let(:empty_transaction_history) { [] }
  let(:empty_running_balance)     { [] }
  # let(:test_transaction_history)  { [Transaction.new("deposit", 1000), Transaction.new("deposit", 2000), Transaction.new("withdrawal", 500)] }
  # let(:test_running_balance)      { [1000, 3000, 2500] }
  # let(:full_statement)            { "date       || credit || debit   || balance\n14/01/2012 ||        || 500.00  || 2500.00\n13/01/2012 || 2000.00||         || 3000.00\n10/01/2012 || 1000.00||         || 1000.00" }

  describe 'prints transactions' do
    describe 'for empty transaction history' do
      it 'can print the header' do
        expect(STDOUT).to receive(:puts).with(header)
        statement.print_statement(empty_transaction_history, empty_running_balance)
      end
    end

    # it 'prints the statement' do
    #   expect(STDOUT).to receive(:puts).with(full_statement)
    #   statement.print_statement(test_transaction_history, test_running_balance)
    # end
  end
end
