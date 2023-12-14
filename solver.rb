class Solver
  def factorial(n)
    if n == 0
      return 1
    elsif n < 0
      raise ArgumentError
    else
      result = 1
      (1..n).each do |num|
        result *= num
      end
      return result
    end
  end

  def reverse; end

  def fizzbuzz; end
end
