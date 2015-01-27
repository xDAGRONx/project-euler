require 'prime'

def solution(multiples)
  collective_prime_factors(multiples).reduce(:*)
end

def collective_prime_factors(numbers)
  numbers.each_with_object([]) do |n, result|
    prime_factors(n).uniq.each do |factor|
      while result.count(factor) < prime_factors(n).count(factor)
        result << factor
      end
    end
  end
end

def prime_factors(number)
  Prime.prime_division(number).flat_map do |n|
    [n.first] * n.last
  end
end

if __FILE__ == $0
  puts solution(2..20)
end
