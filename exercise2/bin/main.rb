while true do
  puts 'Enter an expression to evaluate or q to quit:'
  input = gets.chomp
  break if input =~ /q/
  puts eval(input)
end
