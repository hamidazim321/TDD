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

  def reverse(str)
    return str.reverse
  end

  def fizzbuzz(n)
    if n % 3 == 0 && n % 5 == 0
      return 'fizzbuzz'
    elsif n % 3 == 0
      return 'fizz'
    elsif n % 5 == 0
      return 'buzz'
    else
      return n.to_s
    end
  end
end
