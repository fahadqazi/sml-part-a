(* [3,4,5,6] *)

fun count (from: int, to: int) =
  if from=to
  then to::[]
  else from :: count(from+1, to)

fun countup_from1 (x: int) =
  count(1, x)


(* Alternative approach*)

fun countUp (x: int) =
  let
      fun count (from: int, to: int) =
	if from=to
	then to::[]
	else from :: count(from+1, to)
  in
      count(1, x)
  end

fun countUp2 (x: int) =
  let
      fun count (from: int) =
	if from=x
	then x::[]
	else from :: count(from + 1);
  in
      count(1)
  end
      
