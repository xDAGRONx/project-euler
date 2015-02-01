require 'prime'

def solution(upper_limit)
  Prime.lazy.take_while { |n| n < upper_limit }.reduce(:+)
end

if __FILE__ == $0
  puts solution(2_000_000)
end
