open! Core

(* given a list return the last element, if it exists *)
(* recursive *)
(* pattern matching *)
let rec last = function
  | [] -> None
  | [ a ] -> Some a
  | _ :: t -> last t
;;

let%test_unit "last" =
  [%test_eq: string option] (last ["a"; "b"; "c"; "d"]) (Some "d")
