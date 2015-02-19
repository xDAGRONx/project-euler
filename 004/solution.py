def solution(factor_range):
  result = 0
  for x in factor_range:
    for y in factor_range:
      product = x * y
      if product > result and palindrome(product):
        result = product
  return result

def palindrome(number):
  return str(number) == str(number)[::-1]

if __name__ == '__main__':
  print solution(xrange(100, 1000))
