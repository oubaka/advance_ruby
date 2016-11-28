require 'csv'

file = "#{__dir__}/users.csv"
filename = File.basename file, ".csv"

records = CSV.readlines(file, headers: true)

# define dynamic class
dynamic_class = Class.new do
  def initialize(row)    
    @row = row    
  end

  def to_s
    self.name() + "," + self.age()+ "," + self.city()
  end
end

records.headers.each do |h|
  dynamic_class.class_eval do
    define_method h do      
      @row[h] 
    end
  end
end

# setting the class name
Object.const_set(filename.capitalize, dynamic_class)

users_list = []
records.each do |r|
  user = dynamic_class.new(r)   
  users_list << user
end

users_list.each {|user| puts user }
