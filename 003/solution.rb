require 'prime'

def solution(number)
  Prime.prime_division(number).map(&:first).max
end

if __FILE__ == $0
  puts solution(600_851_475_143)
end
