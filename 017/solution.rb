require 'humanize'

def solution(upper_limit)
  (1..upper_limit).reduce(0) do |a, e|
    a + letter_count(e)
  end
end

def letter_count(number)
  number.humanize.gsub(/\W/, '').length
end

if __FILE__ == $0
  puts solution(1_000)
end
