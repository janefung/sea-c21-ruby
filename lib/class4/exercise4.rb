#!/usr/bin/env ruby
#
# 5 points
#
# In the early days of Roman numerals, the Romans didn't bother with any of this
# new-fangled subtraction 'IX' nonsense. No sir, it was straight addition,
# biggest to littlest - so 9 was written 'VIIII' and so on.
#
# Write a method that, when passed any integer between 1 and 1000, it returns a
# string containing the proper old-school Roman numeral. In other words:
#
#   $ ruby exercise4.rb 9
#   VIIII
#
# TIP #1: Here's a mapping of Roman to Arabic numerals:
#
#   1000 = M
#    500 = D
#    100 = C
#     50 = L
#     10 = X
#      5 = V
#      1 = I
#
# TIP #2: Use the integer division and modulus methods on page 32.
#
# TIP #3: You only need to change the `old_school_roman_numeral` method.

# rubocop:disable MethodLength
def old_school_roman_numeral(num)
  arabs_to_romans = [
    ['M', 1000],
    ['D', 500],
    ['C', 100],
    ['L', 50],
    ['X', 10],
    ['V', 5],
    ['I', 1]
  ]

  result = ''

  arabs_to_romans.each do |arab_to_roman|
    arab = arab_to_roman[1]
    roman = arab_to_roman[0]

    if num / arab != 0
      result += roman * (num / arab)
      num = num % arab
    end
  end
  result
end

input = ARGV[0].to_i

abort 'Usage: exercise4.rb [1-1000]' unless input.between?(1, 1000)

puts old_school_roman_numeral(input)

# Ryan's solution
#   arabics_to_romans = [
#     [1000, 'M'],
#     [500, 'D'],
#     [100, 'C'],
#     [50, 'L'],
#     [10, 'X'],
#     [5, 'V'],
#     [1, 'I']
#   ]
#
#   answer = []
#
#   arabics_to_romans.each do |arabic_to_roman|
#     arabic, roman = arabic_to_roman
#
#     quotient = num / arabic
#     next if quotient == 0
#
#     answer.push(roman * quotient)
#     num %= arabic
#   end
#
#   answer.join
# end
