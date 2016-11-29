describe Transaction do
  describe 'initialization' do
    it 'transaction type set to deposit' do
      test_transaction = Transaction.new("deposit", 1)
      expect(test_transaction.type).to eq("deposit")
    end
    it 'transaction type set to withdrawal' do
      test_transaction = Transaction.new("withdrawal", 1)
      expect(test_transaction.type).to eq("withdrawal")
    end
    it 'transaction amount set' do
      test_transaction = Transaction.new("deposit", 1)
      expect(test_transaction.amount).to eq(1)
    end
  end
end
