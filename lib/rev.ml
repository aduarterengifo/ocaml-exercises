open! Core

let rec rev_no_tail_rec (l: 'a list) = match l with
  | [] -> []
  | h :: t -> (rev_no_tail_rec t) @ [h]

(* how the fuck *)
let rec rev_tail_rec (acc: 'a list) = function
  | [] -> acc
  | h :: t -> rev_tail_rec (h :: acc)  t

let rev l = rev_tail_rec [] l

(* consider rev([1,2,3],[]) *)
(* acc =  1 :: [] *)
(* rev([2,3],1::[])*)
(* acc =  2 :: 1 :: [] | as we go throw the list the element gets placed in the beginning *) 
(* this naturally reverses the list. *)
(* alternatively *)
(* consider rev([1,2,3],[]) *)
(* acc =  [] @ [1] *)
(* rev([2,3],[] @ [1])*)
(* acc =  [1] @ [2]  | we append to the end for every element but in this case the end is the beginning in the beginnings*)



let%test_unit "rev" =
  [%test_eq: string list] (rev ["a"; "b"; "c"; "d"; "e"]) ["e"; "d"; "c"; "b"; "a"]