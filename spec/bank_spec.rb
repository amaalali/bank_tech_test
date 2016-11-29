describe Bank do

  let(:bank) { Bank.new }

  it 'has inital balance of 0' do
    expect(bank.balance).to eq(0)
  end
end
