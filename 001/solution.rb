def solution(upper_limit)
  (1...upper_limit).select do |n|
    n % 3 == 0 || n % 5 == 0
  end .reduce(:+)
end

if __FILE__ == $0
  puts solution(1000)
end
