def solution(factor_range)
  factor_range.reduce(0) do |result, x|
    factor_range.reduce(result) do |result, y|
      product = x * y
      product > result && palindrome?(product) ? product : result
    end
  end
end

def palindrome?(object)
  object.to_s == object.to_s.reverse
end

if __FILE__ == $0
  puts solution(100...1000)
end
