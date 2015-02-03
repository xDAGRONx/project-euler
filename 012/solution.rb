require 'prime'

@tri = Hash.new { |h, k| h[k] = k < 2 ? k : h[k - 1] + k }

def solution(divisor_count)
  (2...Float::INFINITY).lazy.map { |n| @tri[n] }
    .find { |n| divisors(n).size > divisor_count }
end

def divisors(number)
  primes, powers = Prime.prime_division(number).transpose
  exponents = powers.map { |i| (0..i).to_a }
  divisors = exponents.shift.product(*exponents).map do |powers|
    primes.zip(powers).map { |prime, power| prime ** power }.inject(:*)
  end
  divisors.uniq
end

if __FILE__ == $0
  puts solution(500)
end
