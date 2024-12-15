# simple solution, not optimized for speed, not trying to be clever
import std/strutils

const inch2cm: float64 = 2.54

echo "Simple inch to cm conversion table:"
echo ""

echo alignLeft("in", 4), "| ", alignLeft("cm", 6)
echo alignLeft("-", 12, '-')
for i in countup(1, 20, 3):
  echo alignLeft($i, 4), "| ", alignLeft($(float64(i)*inch2cm), 6)
