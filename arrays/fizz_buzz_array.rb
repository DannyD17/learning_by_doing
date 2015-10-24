#!/usr/bin/env ruby

def fizzbuzz(number)
  if number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  elsif number % 3 == 0
    'Fizz'
  elsif number % 5 == 0
    'Buzz'
  else
    number
  end
end

numbers = Array(1..100)
fizzbuzz = numbers.map { |number| number = fizzbuzz(number) }


puts fizzbuzz
