fun maxNum (xs: int list) =
  if null xs
  then 0
  else if null (tl xs)
  then hd xs
  else
      let val tl_ans = maxNum(tl xs)
      in
	  if hd xs > tl_ans
	  then hd xs
	  else tl_ans
      end


(* whats the problem
 - we got one list
 - need to find the max
 - using recursion	  
 *)
	  
fun good_max (xs: int list) =
  if null xs
  then 0
  else if null (tl xs)
  then hd xs
  else
      let val tl_ans = good_max(tl xs)
      in
	  if hd xs > tl_ans
	  then hd xs
	  else tl_ans
      end
	 
