class Solver
  def factorial(n)
    if n == 0
      1
    elsif n < 0
      raise ArgumentError
    else
      result = 1
      (1..n).each do |num|
        result *= num
      end
      result
    end
  end

  def reverse(str)
    str.reverse
  end

  def fizzbuzz(n)
    if n % 3 == 0 && n % 5 == 0
      'fizzbuzz'
    elsif n % 3 == 0
      'fizz'
    elsif n % 5 == 0
      'buzz'
    else
      n.to_s
    end
  end
end
