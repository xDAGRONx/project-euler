def solution(spiral_size)
  (1..spiral_size).step(2).reduce(0) do |result, ring|
    result + ring_sum(ring)
  end
end

def ring_sum(ring_size)
  if ring_size < 3
    1
  else
    square = ring_size ** 2
    4.times.reduce(0) do |result, n|
      result + square - n * (ring_size - 1)
    end
  end
end

if __FILE__ == $0
  puts solution(1001)
end
