#!/usr/bin/env ruby

my_string = 'this is a string to practice with'

puts my_string
puts my_string.capitalize
puts my_string.upcase
puts my_string.capitalize.gsub('string', "'string'")
puts "The string '#{my_string}' has #{my_string.length} characters"
puts my_string.reverse
my_string = my_string.slice('practice ') * 3
puts my_string.rstrip + '!'
