def solution(upper_limit)
  (1...upper_limit).max_by { |n| collatz_chain(n).length }
end

def collatz_chain(number)
  result = [number]
  unless number == 1
    result.concat(collatz_chain(number.even? ? number / 2 : 3 * number + 1))
  end
  result
end

if __FILE__ == $0
  puts solution(1_000_000)
end
