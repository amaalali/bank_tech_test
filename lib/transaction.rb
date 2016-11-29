class Transaction
  def initialize(type,amount)
    @type = type
    @amount = amount.to_i
  end

  def type
    @type
  end

  def amount
    @amount
  end
end
