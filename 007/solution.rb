require 'prime'

def solution(n)
  Prime.first(n).last
end

if __FILE__ == $0
  puts solution(10_001)
end
