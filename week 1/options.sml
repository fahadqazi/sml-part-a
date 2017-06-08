(* Finding max of a list *)

fun max (xs: int list) =
  if null xs
  then 0
  else if null (tl xs)
  then hd xs
  else
      let val tl_ans = max (tl xs)
      in
	  if hd xs > tl_ans
	  then hd xs
	  else tl_ans
      end

(* 

options is a different type
- options are not lists
- lists are not options

Building =>

NONE: holds zero items same as [] 
SOME: much like creating a one element list

isSome: takes in an options and returns true for some and false for none 
valOf: takes and option and get it out of some, if its given a none it throws exception

  *)
