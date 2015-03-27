require 'set'

def solution(pandigital)
  (1...5000).lazy.flat_map do |x|
    (1...100).map do |y|
      [x.to_s + y.to_s + (x * y).to_s, x * y]
    end
  end .each_with_object(Set.new) do |n, result|
    if n.first.length == 9 && Set.new(n.first.each_char) == pandigital
      result << n.last
    end
  end .reduce(:+)
end

if __FILE__ == $0
  puts solution(Set.new('123456789'.each_char))
end
