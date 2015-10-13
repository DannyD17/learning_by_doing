#!/usr/bin/env ruby

numbers = Array(1..100)
fizzbuzz = []

numbers.each do |number|
  if number % 3 == 0 && number % 5 == 0
    fizzbuzz.push('FizzBuzz')

  elsif number % 3 == 0
    fizzbuzz.push('Fizz')

  elsif number % 5 == 0
    fizzbuzz.push('Buzz')

  else
    fizzbuzz.push(number)

  end
end
puts fizzbuzz
