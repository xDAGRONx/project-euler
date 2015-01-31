def solution(sum)
  (1...sum / 3).each do |a|
    ((a + 1)...(sum - a) / 2).each do |b|
      c = sum - a - b
      return a * b * c if a ** 2 + b ** 2 == c ** 2
    end
  end
end

if __FILE__ == $0
  puts solution(1000)
end
