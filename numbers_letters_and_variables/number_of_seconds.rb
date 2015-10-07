#!/usr/bin/env ruby

seconds_in_a_minute = 60
minutes_in_a_hour = 60
hours_in_a_day = 24
days_in_a_week = 7
days_in_a_year = 365
age = 20

puts "There are #{seconds_in_a_minute} seconds in a minute"
puts "There are #{minutes_in_a_hour} minutes in an hour"
puts "There are #{hours_in_a_day} hours in a day"
puts "There are #{days_in_a_week} days in a week"

puts 'That means there are:'
puts "  #{seconds_in_a_minute * minutes_in_a_hour} seconds in an hour,"
puts "  #{seconds_in_a_minute * minutes_in_a_hour * hours_in_a_day}\
 seconds in a day,"
puts "  #{seconds_in_a_minute * minutes_in_a_hour *
 hours_in_a_day * days_in_a_week} seconds in a week"
puts "That means when you turn #{age}, you've been alive for\
 #{seconds_in_a_minute * minutes_in_a_hour *
   hours_in_a_day * days_in_a_year * age} seconds,"

age = 100

puts "and if you make it to #{age}, you will have lived\
 #{seconds_in_a_minute * minutes_in_a_hour * \
    hours_in_a_day * days_in_a_year * age} seconds. Make them count!"
