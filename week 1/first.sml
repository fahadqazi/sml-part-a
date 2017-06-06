(* this is a comment. This is our first program *)

val x = 34;
(* Static environment: x : int *)
(* Dynamic environment: x--> 34 *)

val y = 17;
(* Static environment: x : int, y : int *)


(* Dynamic environment: x--> 17 *)

val z = (x + y ) + (y + 2);
(* Static environment: x : int, y: int, z: int *)
(* Dynamic environment: x--> 34, y--> 17, z--> 70 *)

val q = z + 1;
(* Static environment: x : int, y: int, z: int, q: int *)
(* Dynamic environment: x--> 34, y--> 17, z--> 70, q--> 71 *)

val abs_of_z = if z < 0 then 0 - z else z; (* bool *) (* int *)
(* abs_of_z : int *)
(* Dynamic environment: ... abs_of_z: int*)

(* IF/ELSE construct *)

(*
Syntax: 
  if e1 then e2 else e3
  where if, then, else are keywords and
  e1, e2 and e3 are subexpressions.

Type-checking: 
  - First e1 must be type bool
  - e2 and e3 can have any type (lets say type t)  , but they must have the same type.
  - the type of the entire expression will also be t
  
Evaluation rules: 
  - first e1 is evaluated to value, say v1
  - if v1 is true the evaluate e2 and thats the result of the whole expression
  - else evaluate e3 and thats the result of the whole expression
*)

(* Shadowing*)
(* Multiple bindings of the same variable *)

val a = 10;
(* a:int, a->10 *)

val b = a * 2;
(* a:int, b:int, a->10, b->20 *)

val a = 5; (* this is not an assignment statement*)
(*  a cannot be mutated, this is a differet a in a different dynamic environment *)
(* a-5, b->20 *)

val d = a;

(* ... d->5 *)

val a = a + 1;
(* ...,  a->6 *)

val f = a * 2;
(* ..., f->12 *)
