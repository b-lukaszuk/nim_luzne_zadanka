# simple solution, not optimized for speed, not trying to be clever

import strutils

proc getSquare(n: float): float =
  return n * n

echo "Hello, This is a program that calculates your body mass index (BMI)."
echo "It does not perform any checks. So please make sure to type input correctly."
echo ""

echo "Please enter your height in meters"
let heightMeters = readLine(stdin).parseFloat()

echo "Please enter your weight in kilograms"
let weightKilograms = readLine(stdin).parseFloat()

let bmi = weightKilograms / getSquare(heightMeters)
echo "Your estimated BMI is equal to ", bmi

echo ""
echo "That is all. Goodbye!"
