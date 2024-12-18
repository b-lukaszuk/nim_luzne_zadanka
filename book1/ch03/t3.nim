# simple solution, not optimized for speed, not trying to be clever
var longestSeq: seq[int] = @[]

for num in 2..100:
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
  if len(sequence) > len(longestSeq):
    longestSeq = sequence

echo "Searching for the longest Collatz sequence"
echo "Search for starting point of a sequence in range: 2..100"
echo "Longest sequence found for number: ", longestSeq[0]
echo "Longest sequence length: ", len(longestSeq), " elements"
