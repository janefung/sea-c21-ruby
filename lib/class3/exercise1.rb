# 5 points
#
# Write a program that displays the lyrics to the beloved nursery rhyme
# "3 Bottles of Beer on the Wall".
#
# Here's how the program must work:
#
#   $ ruby exercise1.rb
#   3 bottles of beer on the wall, 3 bottles of beer!
#   Take one down, pass it around, 2 bottles of beer on the wall!
#   2 bottles of beer on the wall, 2 bottles of beer!
#   Take one down, pass it around, 1 bottle of beer on the wall!
#   1 bottle of beer on the wall, 1 bottle of beer!
#   Take one down, pass it around, no more bottles of beer on the wall!
#   No more bottles of beer on the wall, no more bottles of beer!
#   Go to the store and buy some more, 3 bottles of beer on the wall!
#
# TIP: I expect you to use a loop.

# num = 3
# bottles = 'bottles'
#
# loop do
#   puts "#{num} #{bottles} of beer on the wall, #{num} #{bottles} of beer!"
#
#   num -= 1
#
#   num = 'no more' if num == 0
#
#   if num == 1
#     bottles = 'bottle'
#   else
#     bottles = 'bottles'
#   end
#
#   puts "Take one down, pass it around, #{num} #{bottles} of beer on the wall!"
#
#   break if num == 'no more'
# end
#
# puts 'No more bottles of beer on the wall, no more bottles of beer!'
# puts 'Go to the store and buy some more, 3 bottles of beer on the wall!'

total = bottles = 3

loop do
  puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer!"
  bottles -= 1
  break if bottles == 1
  puts "Take one down, pass it around, #{bottles} bottles of beer on the wall!"
end

puts 'Take one down, pass it around, 1 bottle of beer on the wall!'
puts '1 bottle of beer on the wall, 1 bottle of beer!'
puts 'Take one down, pass it around, no more bottles of beer on the wall!'
puts 'No more bottles of beer on the wall, no more bottles of beer!'
puts "Go to the store and buy some more, #{total} bottles of beer on the wall!"
