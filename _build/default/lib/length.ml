open! Core

let rec length2 l acc = match l with
  | [] -> acc
  | _ :: t -> length2 t (acc + 1)

(* tail recursive length implementation *)
let length l = length2 l 0

(* not tail recursive *)
let rec length_not_tail_recursive = function 
  | [] -> 0 
  | _ :: t -> 1 + length_not_tail_recursive t

let%test_unit "length" =
  [%test_eq: int] (length ["a"; "b"; "c"; "d"; "e"]) 5
