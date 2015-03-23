def solution(power)
  (10..500000).select do |n|
    power_sum?(n, power)
  end.reduce(:+)
end

def power_sum?(number, power)
  number.to_s.each_char.reduce(0) do |sum, d|
    sum + d.to_i ** power
  end == number
end

if __FILE__ == $0
  puts solution(5)
end
