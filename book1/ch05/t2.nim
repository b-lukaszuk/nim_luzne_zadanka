# simple solution, not optimized for speed, not trying to be clever
import strutils

proc getCollatzSeq(start: int): seq[int] =
  var n: int = start
  var sequence: seq[int] = @[]
  while true:
    sequence.add(n)
    if n == 1:
      break
    elif n mod 2 == 1:
      n = n * 3 + 1
    else:
      n = n div 2
  return sequence

echo "Hello, This is a program that calculates a Collatz sequence for you."
echo ""

echo "Please type a starting number (integer) for the sequence"
let startingNum = readLine(stdin).parseInt()
echo "Your Collatz sequence: ", getCollatzSeq(startingNum)

echo ""
echo "That is all. Goodbye!"
