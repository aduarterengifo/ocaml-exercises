let rev last_two = function
  | [] -> None
  | _ :: [ a; b ] -> Some (a, b)
  | _ :: t -> last_two t
;;

(* last_two ["a"; "b"; "c"; "d"];; *)
