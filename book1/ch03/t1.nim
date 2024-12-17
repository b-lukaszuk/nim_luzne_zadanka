# simple solution, not optimized for speed, not trying to be clever

var arr: array[10, int]
echo "Initial array: ", arr

for i in 0..9:
  arr[i] = (i+1)*10
echo "Array filled: ", arr

echo "Printing array elements with odd indices:"
for i in 0..<arr.len:
  if i mod 2 == 1:
    echo arr[i]
# or simply
# for i in countup(1, arr.len-1, 2):
#   echo arr[i]

echo "Multiplying elements on even indices by 5."
for i in 0..<arr.len:
  if i mod 2 == 0:
    arr[i] *= 5
# or simply
# for i in countup(2, arr.len-1, 2):
#   arr[i] *= 5
echo "Result: ", arr
