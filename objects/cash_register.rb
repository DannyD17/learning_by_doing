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
      puts "Your change is $#{currency((@total - amount_paid).abs)}"
      @total = 0.00
    else
      puts "Your new total is $#{currency(@total - amount_paid)}"
      @total -= amount_paid
    end
  end

  def currency(number)
    format('%.2f', number)
  end
end

register = CashRegister.new
puts register.total  # => 0.00
puts register.purchase(3.78)  # => 3.78
puts register.total  # => 3.78
register.pay(5.00)  # => "Your change is $1.22"
puts register.total # => 0.00
puts ''
register = CashRegister.new
puts register.total  # => 0.00
puts register.purchase(3.78)  	# => 3.78
puts register.purchase(5.22)	# => 9.00
puts register.total  			# => 9.00
register.pay(5.00)  # => "Your new total is $4.00"
puts register.total			# => 4.00
register.pay(5.00)  # => "Your change is $1.00"
puts register.total # => 0.00
