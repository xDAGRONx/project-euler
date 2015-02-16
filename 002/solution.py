def solution(upper_limit):
  current = 2
  previous = 1
  result = 0

  while current < upper_limit:
    if current % 2 == 0:
      result += current

    previous, current = current, previous + current

  return result

if __name__ == '__main__':
  print solution(4000000)
