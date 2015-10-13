#!/usr/bin/env ruby

my_array_veriable = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts my_array_veriable.join('...') + '...'
puts "T-#{my_array_veriable.reverse.join(', ')}...  BLASTOFF!"
puts "The last element is #{my_array_veriable.last}"
puts "The first element is #{my_array_veriable.first}"
puts "The third element is #{my_array_veriable[2]}"
puts "The element with an index of 3 is #{my_array_veriable[3]}"
puts "The second from last element is #{my_array_veriable[-2]}"
puts "The first four elements are '#{my_array_veriable[0..3].join(', ')}'"

my_array_veriable.delete(5)
my_array_veriable.delete(6)
my_array_veriable.delete(7)
puts "If we delete 5, 6 and 7 from the array, we're left\
 with [#{my_array_veriable.join(',')}]"
puts "If we add 5 at the beginning of the array, we're left\
 with [#{my_array_veriable.unshift(5).join(',')}]"
puts "If we add 6 at the end of the array, we're left\
 with [#{my_array_veriable.push(6).join(',')}]"
puts "Only the elements #{my_array_veriable.select { |num| num > 8 }} are > 8."

my_array_veriable = []
puts "If we remove all the elements, then the length of the\
 array is #{my_array_veriable.length}"
