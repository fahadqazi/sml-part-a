(*Using options*)
(*
 - options are used in the following example instead of returning 0 if the array is empty
 - line 8 and 9
*)

fun bad_max (xs: int list) =
  if null xs
  then 0
  else if null (tl xs)
  then hd xs
  else
      let val tl_ans = bad_max(tl xs)
      in
	  if hd xs > tl_ans
	  then hd xs
	  else tl_ans
      end


(* Option can be used here...*)
