string = "Hello World"

def string.say_hello
  puts "#{self}"
end

class << string
  def content
    puts "content: #{self}"
  end
end

string.define_singleton_method(:message) do
  puts "message: #{self}"
end

string.say_hello
string.content
string.message
