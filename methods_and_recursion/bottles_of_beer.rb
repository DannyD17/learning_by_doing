#!/usr/bin/env ruby

def bottles_of_beer(bottles)
  line_1 = "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.
Take one down and pass it around, "
  line_2 = "#{bottles - 1} bottles of beer on the wall. \n"

  if bottles == 2
    print line_1 + line_2.gsub('bottles', 'bottle')

  elsif bottles == 1
    print line_1.gsub('bottles', 'bottle')
    print " no more bottles of beer on the wall.\n"
    return
  else
    print line_1 + line_2
  end
  bottles_of_beer(bottles - 1)
end

bottles_of_beer(99)

print "No more bottles of beer on the wall, no more bottles of beer. \n"
print 'Go to the store and buy some more, 99 bottles of beer on the wall.'
