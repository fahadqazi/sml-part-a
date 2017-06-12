 fun is_older (pr1: int*int*int, pr2: int*int*int)=
  if (#1 pr1) < (#1 pr2)
  then true
  else if (#2 pr1) < (#2 pr2)
  then true
  else if (#3 pr1) < (#3 pr2)
  then true
  else false

	   

(* 2. Write a function number_in_month that takes a list of dates and a month
 (i.e., an int) and returns how many dates in the list are in the given month. *)
		      
fun number_in_month (dates: (int * int * int) list, month: int)=
  if null dates
  then 0
  else
      let val tl_ans = number_in_month (tl dates, month)
      in
	  if #2 (hd dates)=month
	  then 1 + tl_ans
	  else tl_ans
      end

	  
(* 3. Write a function number_in_months that takes a list of dates and a list of
 months (i.e., an int list) and returns the number of dates in the list of dates
 that are in any of the months in the list of months. Assume the list of months
 has no number repeated. Hint: Use your answer to the previous problem. *)

fun number_in_months (dates: (int * int * int) list, months: int list)=
  if null months
  then 0
  else number_in_month(dates, hd months) + number_in_months(dates, tl months)

							   
(* 4. Write a function dates_in_month that takes a list of dates and a month
 (i.e., an int) and returns a list holding the dates from the argument list of
 dates that are in the month. The returned list should contain dates in the order
 they were originally given. *)

fun dates_in_month (dates: (int * int * int) list, month: int)=
  if null dates
  then []
  else
      let val tl_ans = dates_in_month(tl dates, month)
      in
	  if #2 (hd dates) = month
	  then (hd dates) :: tl_ans
	  else tl_ans
      end


(* 5. Write a function dates_in_months that takes a list of dates and a list of
 months (i.e., an int list) and returns a list holding the dates from the argument
 list of dates that are in any of the months in the list of months. Assume the list
 of months has no number repeated. Hint: Use your answer to the previous problem
 and SML's list-append operator (@). *)

fun dates_in_months(dates: (int * int * int) list, months: int list)=
  if null months
  then []
  else dates_in_month(dates, hd months) @ dates_in_months(dates, tl months) 


(* 6. Write a function get_nth that takes a list of strings and an int n and returns
 the nth element of the list where the head of the list is 1st. Do not worry about
 the case where the list has too few elements: your function may apply hd or tl to
 the empty list in this case, which is okay. *)

fun get_nth (strings: string list, n: int)=
  if n=1 then hd strings
  else get_nth((tl strings), n-1)


(* 7. Write a function date_to_string that takes a date and returns a string of
 the form January 20, 2013 (for example). Use the operator ^ for concatenating
 strings and the library function Int.toString for converting an int to a string.
 For producing the month part, do not use a bunch of conditionals. Instead, use
 a list holding 12 strings and your answer to the previous problem. For consistency,
 put a comma following the day and use capitalized English month names: January,
 February, March, April, May, June, July, August, September, October, November, December. *)

fun date_to_string(date: (int * int *int))=
  let val months = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]
  in get_nth(months, (#2 date)) ^ " " ^ Int.toString(#1 date) ^ ", " ^ Int.toString(#3 date)
  end

