# simple solution, not optimized for speed, not trying to be clever
import strutils

proc getIntGT0FromUsr(msg: string): int =
  var validInput: bool = false
  var num: int = 0
  while not validInput:
    try:
      echo msg
      num = readline(stdin).parseInt()
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

proc getSum1uptoN(n: int): int =
  return int(n*(n+1)/2)

proc main() =
  echo "Toy program. It calculates the sum of integers from 1 upto n.\n"
  let n: int = getIntGT0FromUsr("Enter a positive integer greater than 0:")
  echo "\nThe sum of consecutive integers [1-", n, "] is ", getSum1uptoN(n), "."
  echo "\nThat's all. Goodbye."

main()
