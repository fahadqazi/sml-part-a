(* works only if y>=0 *)
fun pow(x: int, y: int) =
  if y = 0
  then 1
  else x * pow(x, y-1)

fun cube(x: int) =
  pow(x, 3);

val res1 = pow(2,3)
val res2 = cube(3)
