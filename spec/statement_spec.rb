describe Statement do
  let(:statement) { Statement.new }
  let(:header)    { 'date       || credit || debit   || balance' }
  describe 'adding transactions' do
    it 'can print the header' do
      expect(STDOUT).to receive(:puts).with(header)
      # expect(statement.header).to eq('header')
      statement.print_statement
    end
  end
end
