require 'rspec'
require_relative '../solver'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  context '#factorial' do
    it 'Should return 6 as factorial of 3' do
      factorial = @solver.factorial(3)
      
      expect(factorial).to eq(6)
    end

    it "Should return 1 as factorial of 0" do 
      factorial = @solver.factorial(0)

      expect(factorial).to eq(1)
    end

    it "Should raise ArgumentError if a negative integer is given" do
      expect{ @solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  context "#reverse" do
    it 'Should return olleh as the reverse of hello' do
      string = 'hello'
      reversed_string = @solver.reverse(string)

      expect(reversed_string).to eq('olleh')
    end
  end

  context "#fizzbuzz" do
    it 'Test for fizzbuzz method here' do

    end
  end
end

