require_relative '../lib/shoppinglist.rb'

sl = ShoppingList.new 

sl.items do
  add('Toothpaste', 2)
  add('Computer', 1)
end

puts sl.content
