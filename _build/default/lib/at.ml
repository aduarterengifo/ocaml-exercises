open! Core
let at (n: int) (x: 'a list) = List.nth x n

let%test_unit "at" =
  [%test_eq: string option] (at 2 ["a"; "b"; "c"; "d"; "e"]) (Some "c")
