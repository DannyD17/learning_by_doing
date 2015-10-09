#!/usr/bin/env ruby

def get_word(word_type)
  puts "Give me #{word_type}:"
  gets.chomp
end

# Questions asked in order of story
adjective_1 = get_word('an adjective')
adjective_2 = get_word('another adjective')
noun_1 = get_word('a noun')
noun_2 = get_word('another noun')
plural_noun_1 = get_word('a plural noun')
game = get_word('a game')
plural_noun_2 = get_word('another plural noun')
verb_ending_ing_1 = get_word("a verb ending in 'ing'")
verb_ending_ing_2 = get_word("another verb ending in 'ing'")
plural_noun_3 = get_word('another plural noun')
verb_ending_ing_3 = get_word("another verb ending in 'ing'")
noun_3 = get_word('another noun')
plant = get_word('a plant')
body_part = get_word('a part of the body')
place = get_word('a place')
verb_ending_ing_4 = get_word("another verb ending in 'ing'")
adjective_3 = get_word('another adjective')
number = get_word('a number')
plural_noun_4 = get_word('another plural noun')

# Mab Lib story
puts "A vacation is when you take a trip to some #{adjective_1} place
with your #{adjective_2} family. Usually you go to some place
that is near a/an #{noun_1} or up on a/an #{noun_2}.
A good vacation place is one where you can ride #{plural_noun_1}
or play #{game} or go hunting for #{plural_noun_2}. I like
to spend my time #{verb_ending_ing_1} or #{verb_ending_ing_2}.
When parents go on a vacation, they spend their time eating
three #{plural_noun_3} a day, and fathers play golf, and mothers
sit around #{verb_ending_ing_3}. Last summer, my little brother
fell in a/an #{noun_3} and got poison #{plant} all
over his #{body_part}. My family is going to go to (the)
#{place}, and I will practice #{verb_ending_ing_4}. Parents
need vacations more than kids because parents are always very
#{adjective_3} and because they have to work #{number}
hours every day all year making enough #{plural_noun_4} to pay
for the vacation."
