class Task
 
  def run
    input = ''
    @binding = binding
    while true
      puts 'Enter an expression to evaluate or q to quit:'
      input = gets.chomp
      break if input =~ /^q$/
      puts eval(input, @binding) unless input.empty?
    end
  end

end