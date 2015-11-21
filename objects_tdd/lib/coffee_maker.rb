class CoffeeMaker
  attr_reader :water_level, :coffee_grinds, :power, :coffee_level

  def initialize
    @water_level = 0
    @coffee_grinds = false
    @power = 'OFF'
    @coffee_level = 0
  end

  def add_water(amount)
    @water_level += amount
    "You added #{amount} cups of water"
  end

  def add_coffee_grinds
    @coffee_grinds = true
  end

  def remove_coffee_grinds
    @coffee_grinds = false
  end

  def power_button
    if @power == 'OFF'
      @power = 'ON'
    else
      @power = 'OFF'
    end
  end

  def make_coffee
    if @water_level == 0
      'You need to add water'
    elsif @coffee_grinds == false
      'You need to add coffee grinds'
    elsif @power == 'OFF'
      'You need to turn the power on'
    else
      @coffee_level = @water_level
      @water_level = 0
      "You made #{@coffee_level} cups of coffee"
    end
  end
end
