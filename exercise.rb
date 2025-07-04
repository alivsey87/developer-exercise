class Exercise
  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    arr = str.split(' ')
    arr.map! do |word|
      match = word.match(/^([A-Za-z]+)([^A-Za-z]*)$/)
      if match && match[1].length > 4
        replacement = match[1][0] == match[1][0].upcase ? 'Marklar' : 'marklar'
        replacement + match[2]
      else
        word
      end
    end
    arr.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    fibs = [1, 1]

    while fibs.length < nth
      next_fib = fibs[-1] + fibs[-2]
      fibs << next_fib
    end

    even_numbers = fibs.select(&:even?)
    even_numbers.sum
  end
end
