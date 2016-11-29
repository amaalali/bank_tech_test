describe Statement do

  let(:statement)             { Statement.new }
  let(:header)                { 'date       || credit || debit   || balance' }
  let(:transaction_history)   { double :transaction_history }

  describe 'adding transactions' do
    it 'can print the header' do
      expect(STDOUT).to receive(:puts).with(header)
      statement.print_statement(transaction_history)
    end
  end
end
