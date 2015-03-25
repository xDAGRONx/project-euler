COINS = [1, 2, 5, 10, 20, 50, 100, 200]

def solution(value)
  find_count(value, COINS.length - 1)
end

def find_count(remaining, index)
  return 1 if index < 1
  remaining.step(0, -COINS[index]).reduce(0) do |a, r|
    a + find_count(r, index - 1)
  end
end

if __FILE__ == $0
  puts solution(200)
end
