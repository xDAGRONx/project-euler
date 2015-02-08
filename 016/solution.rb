def solution(exponent)
  (2 ** exponent).to_s.each_char.reduce(0) do |a, e|
    a + e.to_i
  end
end

if __FILE__ == $0
  puts solution(1_000)
end
