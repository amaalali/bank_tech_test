class Transaction
  def initialize(type,amount)
    @type = type
    @amount = amount.to_i
    @date = Time.new
  end

  def type
    @type
  end

  def amount
    @amount
  end

  def date
    @date.strftime("%d/%m/%Y")
  end
end
