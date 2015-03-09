require 'prime'

def solution(upper_limit)
  a_values = (-upper_limit + 1...upper_limit).to_a
  b_values = Prime.lazy.take_while { |prime| prime < upper_limit }.to_a
  a_values.product(b_values).max_by do |a, b|
    quadratic_primes(a, b)
  end .reduce(:*)
end

def quadratic_primes(a, b)
  (0...Float::INFINITY).lazy.take_while do |n|
    Prime.prime?(n ** 2 + a * n + b)
  end.count
end

if __FILE__ == $0
  puts solution(1_000)
end
