# simple solution, not optimized for speed, not trying to be clever
import std/math
import strutils

proc getNumGT0FromUsr(msg: string): float =
  var validInput: bool = false
  var num: float = 0.0
  while not validInput:
    try:
      echo msg
      num = readline(stdin).parseFloat()
      if num > 0:
        validInput = true
      else:
        echo "the number must be greater than 0."
    except ValueError:
      echo "the input is not a valid number"
    except:
      echo "unknown error, try again"
  echo "input accepted"
  return num

# returns money paid from interest
# interest in decimal
proc getInterest(balance: float, interest: float): float =
  return round(balance * interest, 2)

proc main() =
  echo "Toy program. It calculates compound interest for an account.\n"
  echo "The program may or may not work correctly."
  let interestRate: float = getNumGT0FromUsr("\nEnter interest rate (in %):") / 100
  var balance: float = round(getNumGT0FromUsr(
      "\nEnter initial balance (in USD):"), 2)

  echo ""
  for i in countup(1, 3):
    balance += getInterest(balance, interestRate)
    echo "balance after ", i, " year(s) = $", balance

  echo "\nThat's all. Goodbye."

main()
