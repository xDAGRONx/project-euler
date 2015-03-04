def solution(digits)
  current, previous = 1, 0
  (1...Float::INFINITY).lazy.find do |n|
    if current.to_s.length == digits
      true
    else
      previous, current = current, previous + current
      false
    end
  end
end

if __FILE__ == $0
  puts solution(1_000)
end
