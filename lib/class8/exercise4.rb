#!/usr/bin/env ruby
#
# 5 points
#
# Extend the previous program so both the method and the block accept a second
# parameter and displays their values.
#
# For example:
#
#   $ ruby exercise4.rb
#   Executing the method
#   method_param1 is dinner
#   method_param2 is soup
#   Executing the block
#   block_param1 is lunch
#   block_param2 is tacos
#
# TIP: Don't over think this one. The simpler the better.

def follow_the_execution(method_param1, method_param2, &block)
  puts 'Executing the method'
  puts "method_param1 is #{method_param1}"
  puts "method_param2 is #{method_param2}"
  block.call('lunch', 'tacos')
end

follow_the_execution('dinner', 'soup') do |block_param1, block_param2|
  puts 'Executing the block'
  puts "block_param1 is #{block_param1}"
  puts "block_param2 is #{block_param2}"
end
