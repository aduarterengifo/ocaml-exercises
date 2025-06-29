open! Core

(* note two pointers is not possible for lists because accessing the last element of a list is O(n)*)
let is_palindrome_slow (list: _ list) =
    (* One can use either the rev function from the previous problem, or the built-in List.rev *)
    List.equal String.equal list (Rev.rev list)


let%test_unit "is_palindrome" =
  [%test_eq: bool] (is_palindrome_slow ["x"; "a"; "m"; "a"; "x"]) true