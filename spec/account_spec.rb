describe Account do
  describe 'initialization' do
    let(:account) { Account.new }
    it 'has inital balance of 0' do
      expect(account.balance).to eq(0)
    end
    it 'it has an emptry transaction history' do
      expect(account.history).to eq([])
    end
  end
end
