# frozen_string_literal: true

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

    it 'Should raise ArgumentError if a negative integer is given' do
      expect { @solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  context '#reverse' do
    it 'Should return olleh as the reverse of hello' do
      string = 'hello'
      reversed_string = @solver.reverse(string)

      expect(reversed_string).to eq('olleh')
    end
  end

  context '#fizzbuzz' do
    it 'should handle large values on N without crashing' do
      result = @solver.fizzbuzz(1_000_000)
      expect(result).to eq 'buzz'
    end

    it 'Should return fizz for multiple of 3' do
      result = @solver.fizzbuzz(6)
      
      expect(result).to eq('fizz')
    end

    it 'Should return buzz for multiple of 5' do
      result = @solver.fizzbuzz(10)
      
      expect(result).to eq('buzz')
    end

    it 'Should return fizzbuzz for multiple of both 3 and 5' do
      result = @solver.fizzbuzz(15)
      
      expect(result).to eq('fizzbuzz')
    end
  end
end
