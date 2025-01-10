# simple solution, not optimized for speed, not trying to be clever
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

proc getRectangleArea(length: float, width: float): float =
  return length * width

proc main() =
  echo "Toy program. It calculates the area of a room.\n"
  let length: float = getNumGT0FromUsr("Enter length (in meters):")
  let width: float = getNumGT0FromUsr("Enter width (in meters):")
  echo "\nThe area of the room is ", length, " [m] x ", width, " [m] = ",
      getRectangleArea(length, width), " [m^2]"
  echo "\nThat's all. Goodbye."

main()
