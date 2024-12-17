# simple solution, not optimized for speed, not trying to be clever

let nums: array[4, int] = [9, 19, 25, 27]
var collatzSeqs: seq[seq[int]] = @[]

for num in nums:
  var n: int = num
  var sequence: seq[int] = @[]
  while true:
    sequence.add(n)
    if n == 1:
      break
    elif n mod 2 == 1:
      n = n * 3 + 1
    else:
      n = n div 2
  collatzSeqs.add(sequence)

echo "Some interesting Collatz sequences:"
for i, cs in collatzSeqs:
  echo "Sequence ", i+1, " of length ", len(cs), ": ", cs
