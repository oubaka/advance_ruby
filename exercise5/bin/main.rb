string = "Hello World"

def string.say_hello
  puts "#{self}"
end

class << string
  def content
    puts "content: #{self}"
  end
end

string.say_hello
string.content
