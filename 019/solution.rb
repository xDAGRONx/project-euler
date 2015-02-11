require 'date'

def solution(date_range)
  date_range.count do |date|
    date.sunday? && date.day == 1
  end
end

if __FILE__ == $0
  puts solution(Date.parse('01-01-1901')...Date.parse('01-01-2001'))
end
