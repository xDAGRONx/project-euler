def solution(number):
  i = 2
  while i ** 2 < number:
    while number % i == 0:
      number /= i
    i += 1
  return number

if __name__ == '__main__':
  print solution(600851475143)
