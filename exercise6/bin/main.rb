require_relative '../lib/mystring.rb'

obj = MyString.new("Hello")

while true
  begin
    puts "Enter method name:"
    name = gets.chomp
    obj = MyString.new("Hello World")
    puts eval("obj.#{name}")
  rescue => exception
    puts exception
  end
end
