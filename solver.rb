# the Solver class provides methods for factorial, string reverse and fizzbuzz listing
class Solver
  def factorial(number)
    if number.zero?
      1
    elsif number.negative?
      raise ArgumentError
    else
      number * factorial(number - 1)
    end
  end

  def reverse(str)
    str.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      n.to_s
    end
  end
end
