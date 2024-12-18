# simple solution, not optimized for speed, not trying to be clever

# at a whim, i'll used int's instead of floats
proc add(p1: (int, int), p2: (int, int)): (int, int) =
  return (p1[0] + p2[0], p1[1] + p2[1])

let
  v1: (int, int) = (1, 2)
  v2: (int, int) = (3, 4)

echo "Point", v1, " + Point", v2, " = Point", add(v1, v2)
