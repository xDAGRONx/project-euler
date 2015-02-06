def solution(height, width = height)
  factorial(height + width) / factorial(height) ** 2
end

def factorial(n)
  (1..n).reduce(:*) || 1
end

if __FILE__ == $0
  puts solution(20)
end
