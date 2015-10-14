# This is a cash register class
class CashRegister
  def initialize
    @total = 0.00
    @pay = 0.00
  end

  def total
    currency(@total)
  end

  def purchase(price)
    @total += price
  end

  def pay(amount_paid)
    if amount_paid > @total
      print "Your change is $#{currency((@total - amount_paid).abs)}"
      @total = 0.00
    else
      print "Your new total is $#{currency(@total - amount_paid)}"
      @total -= amount_paid
    end
  end

  def currency(number)
    format('%.2f', number)
  end
end
