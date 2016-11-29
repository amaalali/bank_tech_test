describe Account do
  let(:account) { Account.new }
  describe 'initialization' do
    it 'has inital balance of 0' do
      expect(account.balance).to eq(0)
    end
    it 'it has an emptry transaction history' do
      expect(account.history).to eq([])
    end
  end

  describe 'adding transactions' do
    it 'can add a deposit' do
      account.desposit(1)
      expect(account.history.size).to eq(1)
      expect(account.history.first.type).to eq('deposit')
    end
  end
end
