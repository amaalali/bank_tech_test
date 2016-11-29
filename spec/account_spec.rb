describe Account do
  let(:account) { Account.new }
  describe 'initialization' do
    it 'has inital balance of 0' do
      expect(account.balance).to eq(0)
    end
  end

  describe 'adding transactions' do
    it 'can make a deposit' do
      account.desposit(1)
      expect(account.history.first.type).to eq('deposit')
    end
    it 'can make a withdrawal' do
      account.withdrawal(1)
      expect(account.history.size).to eq(1)
      expect(account.history.first.type).to eq('withdrawal')
    end
  end

  describe 'checking balance' do
    it 'can make a withdrawal' do
      account.desposit(1000)
      account.desposit(2000)
      account.withdrawal(500)
      expect(account.balance).to eq(2500)
    end
  end

  describe 'prints statement' do

    let(:header)    { 'date       || credit || debit   || balance' }

    it 'print header for account with no history' do
      expect(STDOUT).to receive(:puts).with(header)
      account.statement
    end
  end
end
