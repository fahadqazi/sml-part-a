fun max (xs: int list)=
  if null xs
  then NONE
  else
      let fun nonE (xs: int list)=
	    if null (tl xs)
	    then hd xs
	    else let val tl_ans = nonE (tl xs);
		 in
		     if hd xs > tl_ans
		     then hd xs
		     else tl_ans
		 end
      in
	  SOME(nonE xs)
      end
