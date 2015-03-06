def solution(upper_limit)
  (2...upper_limit).max_by do |n|
    (1...n).find(-> { 0 }) { |d| 10 ** d % n == 1 }
  end
end

if __FILE__ == $0
  puts solution(1_000)
end
