# Optional
class Transaction
  def initialize(amount)
    # Initialize amount and date of transaction
    @date = Date.today
    @amount = amount
  end

  def to_s
    # Nicely print transaction infos using Time#strftime.
    if amount < 0
      p "vous avez retiré #{-@amount} € le #{date.strftime}"
    else
      p "vous avez déposé #{@amount} € le #{date.strftime}"
  end

end