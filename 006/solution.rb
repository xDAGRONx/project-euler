def solution(numbers)
  square_of_the_sum(numbers) - sum_of_the_squares(numbers)
end

def sum_of_the_squares(numbers)
  numbers.reduce(0) do |result, number|
    result + number ** 2
  end
end

def square_of_the_sum(numbers)
  numbers.reduce(:+) ** 2
end

if __FILE__ == $0
  puts solution(1..100)
end
