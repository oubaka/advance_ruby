puts 'Enter a method name:'
method_name = gets.chomp

puts 'Enter a line of code:'
code = gets.chomp

Object.define_singleton_method(method_name) do
  eval(code)
end

Object.send(method_name)
