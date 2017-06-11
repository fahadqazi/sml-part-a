 fun is_older (pr1: int*int*int, pr2: int*int*int)=
  if (#1 pr1) < (#1 pr2)
  then true
  else if (#2 pr1) < (#2 pr2)
  then true
  else if (#3 pr1) < (#3 pr2)
  then true
  else false

fun number_in_month (xs: (int * int * int) list, y: int)=
  if null xs
  then 0
  else if #2 (hd xs)=y
  then 1 + number_in_month((tl xs), y)
  else number_in_month((tl xs), y)


fun number_in_months (dates: (int * int * int) list, months: int list)=
  if null months
  then 0
  else number_in_month(dates, hd months) + number_in_months(dates, tl months)
 
(*
Write a function dates_in_month that takes a list of dates and a month (i.e., an int) 
-  returns a list holding the dates from the argument list of dates that are in the month. 
- The returned list should contain dates in the order they were originally given.
*)

fun dates_in_month (dates: (int * int * int) list, month: int)=   
  if null dates
  then []
  else if (#2 (hd dates))=month
  then hd dates :: dates_in_month(tl dates, month)
  else dates_in_month(tl dates, month)

(*
Write a function dates_in_months that takes a list of dates and a list of months 
(i.e., an int list)
 - returns a list holding the dates from the argument list of dates that are in any
of the months in the list of months. 
 - Assume the list of months has no number repeated. Hint: Use your answer to the
previous problem and SML’s list-append operator (@).
*)


fun dates_in_months (dates: (int * int * int) list, months: int list)=
  if null months
  then []
  else dates_in_month(dates, hd months) @ dates_in_months(dates, tl months)


fun countup (from: int, to: int)=
  if from=to
  then to::[]
  else from :: countup(from + 1, to)

fun add (array: int list)=
  hd array + add(tl array)

fun addFix(array: int list)=
  if null (tl array)
  then hd array
  else hd array + addFix(tl array)
