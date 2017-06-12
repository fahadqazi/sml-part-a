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

							   
fun dates_in_month (dates: (int * int * int) list, month: int)=   
  if null dates
  then []
  else if (#2 (hd dates))=month
  then hd dates :: dates_in_month(tl dates, month)
  else dates_in_month(tl dates, month)


fun dates_in_months (dates: (int * int * int) list, months: int list)=
  if null months
  then []
  else dates_in_month(dates, hd months) @ dates_in_months(dates, tl months)

							 
fun get_nth (strings: string list, n: int)=
  if n = 1 then hd strings
  else get_nth(tl strings, n -1 )

fun date_to_string (date: (int * int * int))=
  let val months = [ "January", "February", "March", "April", "May", "June", "July", "August", "September"," October", "November", "December"]
  in get_nth(months, #2 date) ^ " " ^ Int.toString(#3 date) ^ ", " ^ Int.toString(#1 date) 
  end
