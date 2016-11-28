class ShoppingList
  attr_reader :content
  
  def initialize
    @content = Hash.new {|h,k| h[k] = 0}    
  end

  def add(itemName, quantity)
    @content[itemName] += quantity
  end

  def items(&block)
    instance_eval(&block)
  end

  def to_s
    @content
  end

end