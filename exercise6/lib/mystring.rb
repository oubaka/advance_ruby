class MyString < String
  def exclude?(chars)    
    !self.include? chars
  end
end