(* given a list return the last element, if it exists *)
(* recursive *)
(* pattern matching *)
let rev last = function
  | [] -> None
  | [ a ] -> Some a
  | _ :: t -> last t
;;
