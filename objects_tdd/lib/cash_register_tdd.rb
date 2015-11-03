# CashRegister class
class CashRegister
  def initialize
    @total = 0.00
  end

  def total
    @total.round(2)
  end

  def purchase(amount)
    @total += amount
  end

  def payment(amount)
    if amount > @total
      change = amount - @total
      @total = 0.00
      "Your change is $#{currency(change)}"
    else
      @total -= amount
      "Your new total is $#{currency(@total)}"
    end
  end

  def currency(amount)
    format('%.2f', amount)
  end
end
