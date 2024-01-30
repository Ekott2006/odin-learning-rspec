class Calculator
  def add(*numbers)
    result = 0
    numbers.each { |num| result += num }
    result
  end

  def subtract(a, b)
    a - b
  end

  def multiply(*numbers)
    result = 1
    numbers.each { |num| result *= num }
    result
  end

  def divide(num1, num2)
    num1 / num2.to_f
  end
end
