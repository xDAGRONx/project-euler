require 'set'

def solution(a_range, b_range)
  a_range.each_with_object(Set.new) do |a, result|
    b_range.each_with_object(result) do |b, result|
      result << a ** b
    end
  end .size
end

if __FILE__ == $0
  puts solution(2..100, 2..100)
end
