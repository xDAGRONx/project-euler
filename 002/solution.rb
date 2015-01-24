@fib = Hash.new { |h, k| h[k] = k < 3 ? k : h[k - 1] + h[k - 2] }

def solution(upper_limit)
  (1...Float::INFINITY).lazy
    .map { |n| @fib[n] }
    .take_while { |n| n < upper_limit }
    .select { |n| n.even? }
    .reduce(:+)
end

if __FILE__ == $0
  puts solution(4_000_000)
end
