# This is a coffee maker class
# In the command line navigate to the directory with this file is
# run irb -r'./coffee_maker.rb'
# In order to call this class set a variable = CoffeeMaker.new
# After a new class is made, try to make some coffee (variable.make_coffee)
# or drink coffee (variable.drink_coffee)
# There are other methods available to use, they are
# add_coffee_grinds? : adds grinds to the coffee machine
# add_water(cups) : adds water to the coffee machine
# power : turns on the coffee machine
# pour_coffee : pours coffee from pot into mug
# drink_coffee : fairly self explanatory
class CoffeeMaker
  attr_reader :coffee, :coffee_grinds, :water, :coffee_in_mug

  def initialize
    @coffee = 0.0
    @coffee_grinds = false
    @water = 0.0
    @power = false
    @coffee_in_mug = 0.0
    puts 'You feel like drinking some coffee (drink_coffee)'
  end

  def add_coffee_grinds?
    @coffee_grinds = true
    puts 'There are now coffee grinds in the machine'
  end

  def add_water(cups)
    if cups <= 12 && cups > 0
      @water += cups
      puts "You add #{cups} cup/s of water"
    else
      puts 'Coffee pot holds 12 cups of water'
    end
  end

  def power?
    if @power == false
      @power = true
      puts 'The coffee machine is on'
    else
      @power = false
      puts 'The coffee machine is off'
    end
  end

  # rubocop:disable Metrics/LineLength
  # rubocop:disable Metrics/MethodLength
  # Disabled rubocop line length in order to make code easier to read.
  # Disabled rubocop method length. Method is just over recommended length and for
  # ease of reading and functionality cop disabled
  def make_coffee
    if @coffee_grinds == false
      puts 'You need to add coffee grinds (add_coffee_grinds?)'
    elsif @water == 0.0
      puts 'You need to add water to the coffee machine (add_water(number of cups))'
    elsif @power == false
      puts 'You need to turn on the coffee machine (power?)'
    else
      @coffee += @water
      @water = 0.0
      if @coffee > 12 # If pot is full, but more water added anyway, pot will overflow
        puts 'The coffee pot is overflowing'
        @coffee = 12
      else
        puts "You have made #{@coffee} cups of coffee!!!  YAY"
      end
    end
  end

  def pour_coffee(amount)
    if coffee != 0
      if amount > @coffee
        puts "There is only #{@coffee} cup/s of coffee left, you pour the rest"
        fill_mug(@coffee)
        @coffee = 0
      else
        fill_mug(amount)
        @coffee -= amount
      end
    else
      puts 'YOU ARE OUT OF COFFEE!!!! MAKE MORE!!!! DO IT!!!! DO IT NOW!!!!!! (make_coffee)'
    end
  end

  # rubocop:enable Metrics/MethodLength

  def fill_mug(amount)
    @coffee_in_mug += amount
    if @coffee_in_mug > 2
      puts 'Your mug only holds 2 cups!  You are spilling coffee! OH THE HORROR!!'
      @coffee_in_mug = 2
    else
      puts "You pour #{amount} cup/s of coffee into your mug"
    end
  end

  def drink_coffee
    if @coffee_in_mug > 0
      @coffee_in_mug = 0
      puts 'You drink the delicious nectar of the gods and feel it flowing through you'
    else
      puts 'You need to refill your mug(pour_coffee(amount))'
    end
  end

  private :fill_mug
end
# rubocop:enable Metrics/LineLength

coffee_maker = CoffeeMaker.new
coffee_maker.make_coffee
coffee_maker.add_coffee_grinds?
coffee_maker.add_water(10)
coffee_maker.power?
coffee_maker.make_coffee
coffee_maker.drink_coffee
coffee_maker.pour_coffee(5)
coffee_maker.drink_coffee
puts "#{coffee_maker.coffee} cups of coffee left in the pot"
coffee_maker.pour_coffee(2)
coffee_maker.drink_coffee
coffee_maker.pour_coffee(2)
coffee_maker.drink_coffee
coffee_maker.pour_coffee(5)
