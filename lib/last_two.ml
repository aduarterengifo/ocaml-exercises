open! Core

(* given a list return the last two element, if they exists *)
(* recursive *)
(* pattern matching *)
let rec last_two = function
  | [] -> None
  | _ :: [ a; b ] -> Some (a, b)
  | _ :: t -> last_two t
;;

(* last_two ["a"; "b"; "c"; "d"];; *)


let%test_unit "last_two" =
  [%test_eq: (string * string) option] (last_two ["a"; "b"; "c"; "d"]) (Some ("c", "d"))
