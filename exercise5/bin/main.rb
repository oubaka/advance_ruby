string = "Hello World"

# 1
def string.say_hello
  puts "#{self}"
end

# 2
class << string
  def content
    puts "content: #{self}"
  end
end

# 3
string.define_singleton_method(:message) do
  puts "message: #{self}"
end

# 4
class String
  class << self
    def single
      puts "single: #{self}"
    end
  end
end

# 5
module TestModule
  def hello
    puts 'hello from module'
  end
end

class String
  extend TestModule
end

p string.singleton_methods
p String.singleton_methods
