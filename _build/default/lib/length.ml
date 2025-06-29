open! Core
let rec length = function 
  | [] -> 0 
  | _ :: t -> 1 + length t

let%test_unit "length" =
  [%test_eq: int] (length ["a"; "b"; "c"; "d"; "e"]) 5
