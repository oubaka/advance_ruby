class Task
  
  def run
    puts 'Enter an expression to evaluate or q to quit:'
    input = gets.chomp
    return false if input =~ /q/
    puts eval(input)
    return true
  end

end