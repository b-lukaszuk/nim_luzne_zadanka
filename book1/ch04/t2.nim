# simple solution, not optimized for speed, not trying to be clever
proc sayTick()
proc sayTock()

var counter: int = 0

proc sayTick() =
  if counter < 20:
    stdout.write counter, ": tick, "
    sayTock()

proc sayTock() =
  echo "tock"
  inc(counter)
  sayTick()

sayTick()
