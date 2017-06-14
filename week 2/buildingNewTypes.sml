(*
base types and compound types
*)

(*example of a record*)

val x = {bar=(1+2, true andalso true) ,foo=(5+4), baz=(false, 9)};
val simba = {species="cat", age=22, name="Simba"}

(*
Tuples as syntactic sugar
*)

val a_pair = (3+4, 1+2);
val a_record = {name="jim", age=44};
val another_pair = {2=5, 1=3, 3=9}; (* val another_pair = (3,5,9) : int * int * int *)
(*
 - Tuples are just records
 - syntactic sugar 
*)
