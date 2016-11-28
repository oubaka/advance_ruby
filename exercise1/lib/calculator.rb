class Calculator

  def Calculator.calculate(a, operator, b)
    begin
      a.send(operator, b)
    rescue => exception
      puts exception
    end
  end

end