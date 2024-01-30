require './lib/calculator'

# describe ==> Group/Collection of test
describe Calculator do
  describe '#add' do
    # it ==> Individual Test
    it 'returns the sum of two numbers' do
      calculator = Calculator.new

      expect(calculator.add(5, 2)).to eql(7) # "expect" to "eql"
    end

    it 'returns the sum of more than two numbers' do
      calculator = Calculator.new
      expect(calculator.add(2, 5, 7)).to eql(14)
    end
  end

  describe '#subtract' do
    it 'returns the difference of two numbers' do
      calculator = Calculator.new

      expect(calculator.subtract(5, 2)).to eql(3)
    end

    it 'returns the negative when possible' do
      calculator = Calculator.new
      expect(calculator.subtract(5, 7)).to eql(-2)
    end
  end

  describe '#multiply' do
    it 'returns the multiplication of two numbers' do
      calculator = Calculator.new

      expect(calculator.multiply(5, 2)).to eql(10)
    end

    it 'returns the multiplication of more than two numbers' do
      calculator = Calculator.new
      expect(calculator.multiply(5, 7, 2)).to eql(70)
    end
  end

  describe '#divide' do
    it 'returns the divison of two numbers with decimal point' do
      calculator = Calculator.new

      expect(calculator.divide(10, 2)).to eql(5.0)
    end

    it 'returns the decimal point when possible' do
      calculator = Calculator.new
      expect(calculator.divide(2, 5)).to eql(0.4)
    end
  end
end
