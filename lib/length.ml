open! Core

let rec length2 x acc = match x with
  | [] -> 0
  | _ :: t -> length2 t (acc + 1)

let rec length = function 
  | [] -> 0 
  | _ :: t -> 1 + length t

let%test_unit "length" =
  [%test_eq: int] (length ["a"; "b"; "c"; "d"; "e"]) 5
