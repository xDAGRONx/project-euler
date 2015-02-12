def solution(n)
  factorial(n).to_s.each_char.reduce(0) do |a, e|
    a + e.to_i
  end
end

def factorial(n)
  (1..n).reduce(:*) || 1
end

if __FILE__ == $0
  puts solution(100)
end
