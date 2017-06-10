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
 - Returns a list holding the dates from the argument list of dates that are in the month. 
 - The returned list should contain dates in the order they were originally given.
*)		      

fun dates_in_month (dates: (int * int * int) list, month: int)=
  if null dates
  then []
  else if  #2 (hd dates) = month
  then hd dates::[]
  else []:: dates_in_month(tl dates, month);
