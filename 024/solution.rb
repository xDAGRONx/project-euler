def solution(digits)
  digits.to_a.permutation.map do |n|
    n.join.to_i
  end .sort[999_999]
end

if __FILE__ == $0
  puts solution('0'..'9')
end
