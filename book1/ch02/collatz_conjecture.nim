# simple solution, not optimized for speed, not clever
var n: int = 13
echo "Collatz conjecture sequence 1"
while true:
  echo n
  if n == 1:
    break
  elif n mod 2 == 1:
    n = n * 3 + 1
  else:
    n = n div 2

echo ""

n = 6
echo "Collatz conjecture sequence 2"
while true:
  echo n
  if n == 1:
    break
  elif n mod 2 == 1:
    n = n * 3 + 1
  else:
    n = n div 2
