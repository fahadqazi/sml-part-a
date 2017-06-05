(* Functions over lists*)

(* Recursively adding a list of elements*)

fun sum_list (xs: int list) =
  if null xs
  then 0
  else hd xs + sum_list(tl xs)

fun list_product (ys: int list) =
  if null ys
  then 1
  else hd ys * list_product(tl ys)

fun countDown (x: int) = (* [7,6,5,4,3,2,1] *)
  if x=0
  then []
  else x :: countDown(x-1)

fun append(xs: int list, ys: int list) =
  if null xs
  then ys
  else hd(xs) :: append(tl(xs), ys)
