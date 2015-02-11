TRIANGLE =
  [
    %w[75].map(&:to_i),
    %w[95 64].map(&:to_i),
    %w[17 47 82].map(&:to_i),
    %w[18 35 87 10].map(&:to_i),
    %w[20 04 82 47 65].map(&:to_i),
    %w[19 01 23 75 03 34].map(&:to_i),
    %w[88 02 77 73 07 63 67].map(&:to_i),
    %w[99 65 04 28 06 16 70 92].map(&:to_i),
    %w[41 41 26 56 83 40 80 70 33].map(&:to_i),
    %w[41 48 72 33 47 32 37 16 94 29].map(&:to_i),
    %w[53 71 44 65 25 43 91 52 97 51 14].map(&:to_i),
    %w[70 11 33 28 77 73 17 78 39 68 17 57].map(&:to_i),
    %w[91 71 52 38 17 14 91 43 58 50 27 29 48].map(&:to_i),
    %w[63 66 04 68 89 53 67 30 73 16 69 87 40 31].map(&:to_i),
    %w[04 62 98 27 23 09 70 98 73 93 38 53 60 04 23].map(&:to_i)
  ]

def solution(triangle)
  paths(triangle, 0, 0).max
end

def paths(triangle, row, column)
  if row == triangle.size - 1
    triangle[row][column]
  else
    [
      add_value(paths(triangle, row + 1, column), triangle[row][column]),
      add_value(paths(triangle, row + 1, column + 1), triangle[row][column])
    ].flatten
  end
end

def add_value(paths, value)
  [*paths].map { |path| path + value }
end

if __FILE__ == $0
  puts solution(TRIANGLE)
end
