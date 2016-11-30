describe Account do
  let(:account) { Account.new }
  describe 'initialization' do
    it 'has inital balance of 0' do
      expect(account.balance).to eq(0)
    end
  end

  describe 'adding transactions' do
    it 'can make a deposit' do
      account.deposit(1)
      expect(account.history.first.type).to eq('deposit')
    end
    it 'can make a withdrawal' do
      account.withdrawal(1)
      expect(account.history.size).to eq(1)
      expect(account.history.first.type).to eq('withdrawal')
    end
  end

  describe 'checking balance' do
    it 'with account activity' do
      account.deposit(1000)
      account.deposit(2000)
      account.withdrawal(500)
      expect(account.balance).to eq(2500)
    end
  end

  describe 'prints statement' do

    let(:header)          { 'date       || credit || debit   || balance' }
    # let(:full_statement)  { "date       || credit || debit   || balance\n14/01/2012 ||        || 500.00  || 2500.00\n13/01/2012 || 2000.00||         || 3000.00\n10/01/2012 || 1000.00||         || 1000.00" }


    it 'print header for account with no history' do
      expect(STDOUT).to receive(:puts).with(header)
      account.statement
    end

    # it 'prints the statement' do
    #   account.deposit(1000)
    #   account.deposit(2000)
    #   account.withdrawal(500)
    #   expect(STDOUT).to receive(:puts).with(full_statement)
    #   account.statement
    # end
  end
end
