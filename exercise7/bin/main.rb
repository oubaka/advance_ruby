require_relative '../lib/reader.rb'

file = "#{__dir__}/users.csv"
filename = File.basename file, ".csv"

reader = Reader.new(file, filename)
begin
  users_list = reader.read
  users_list.each {|user| puts user }
rescue => exception
  p exception
end
