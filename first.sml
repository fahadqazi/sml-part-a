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
  - e2 and e3 can have any type (letletss  , but they must have the same type.
  - 
