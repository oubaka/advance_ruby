require_relative '../lib/calculator.rb'

puts Calculator.calculate 3,:+,5
puts Calculator.calculate 3,:-,5
puts Calculator.calculate 3,:/,5
puts Calculator.calculate 3,:*,5
puts Calculator.calculate 3,:%,5
puts Calculator.calculate 3,"-",6
puts Calculator.calculate 3,"0",6
