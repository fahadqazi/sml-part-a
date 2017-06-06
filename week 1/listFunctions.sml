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

fun countUp (x: int) =
  if x=10
  then []
  else x :: countUp(x+1);

fun append (xs: int list, ys: int list) =
  if null xs
  then ys
  else hd(xs) :: append((tl xs),ys)

(* Functions over pairs of lists *)

fun sum_pair_list (xs: (int * int) list) =
  if null xs
  then 0
  else #1 (hd xs) + #2 (hd xs) + sum_pair_list(tl xs)

fun first_sums (xs: (int * int) list) =
  if null xs
  then 0
  else #1 (hd xs) + first_sums(tl xs)

fun firsts (xs: (int * int) list) =
  if null xs
  then []
  else (#1 (hd xs)) :: firsts(tl xs)

fun seconds (xs: (int * int) list) =
  if null xs
  then []
  else (#2 (hd xs)) :: seconds(tl xs)

fun sum_pair_list2 (xs: (int * int) list) =
  (sum_list(firsts xs)) + (sum_list(seconds xs))

(* Functional Recursive Factorial *)

fun factorial(n: int) = list_product(countDown n)
