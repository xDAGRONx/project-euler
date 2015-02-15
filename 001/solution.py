def solution(upper_limit):
  result = 0
  for n in range(1, upper_limit):
    if n % 3 == 0 or n % 5 == 0:
      result += n
  return result

if __name__ == '__main__':
  print solution(1000)
