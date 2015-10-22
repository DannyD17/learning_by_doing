#!/usr/bin/env ruby

def bottles_of_beer(number)
  line_1 = "#{pluralize('bottle', number)} of beer"
  line_2 = ' on the wall'
  line_3 = 'Take one down and pass it around, '

  if number >= 0
    puts "#{line_1.capitalize + line_2}, #{line_1}."
    puts line_3 + pluralize('bottle', number - 1) + ' of beer' + line_2 + '.'

    bottles_of_beer(number - 1)
  else
    return
  end
end

def pluralize(string, number)
  if number > 1
    "#{number} #{string}s"
  elsif number == 1
    "#{number} #{string}"
  elsif number <= 0
    "no more #{string}s"
  end
end

bottles_of_beer(99)

puts 'No more bottles of beer on the wall, no more bottles of beer'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
