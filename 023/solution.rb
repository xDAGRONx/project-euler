require 'prime'

def solution
  abundant_sums(1..28123).reduce(:+)
end

def abundant_sums(range)
  abundants = abundants(12..28123)
  range.lazy.reject do |n|
    possible_lower = abundants.take_while { |x| x <= n / 2 }
    possible_upper = abundants.select { |x| x >= n / 2 }
    possible_upper.any? do |x|
      possible_lower.include?(n - x)
    end
  end
end

def abundants(range)
  range.select { |n| divisors(n).reduce(:+) > n }
end

def divisors(number)
  primes, powers = Prime.prime_division(number).transpose
  exponents = powers.map { |i| (0..i).to_a }
  divisors = exponents.shift.product(*exponents).map do |powers|
    primes.zip(powers).map { |prime, power| prime ** power }.inject(:*)
  end
  divisors.uniq - [number]
end

if __FILE__ == $0
  puts solution
end
