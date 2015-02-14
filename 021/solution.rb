require 'prime'

def solution(upper_limit)
  d = (2...upper_limit).each_with_object({}) do |n, a|
    a[n] = divisors(n).reduce(:+)
  end
  d.reduce(0) do |a, (k, v)|
    k != v && d[v] == k ? a + k : a
  end
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
  puts solution(10_000)
end
