(* let rec prod x = 
  if List.length x == 0 then 1 else
  if List.length x == 1 then (List.nth x 0) else 
    (List.nth x 0) * prod (List.tl x);; *)

let rec prod_test x = 
  if List.length x == 0 then 0 else (* logic bug here *)
  if List.length x == 1 then (List.nth x 0) else 
    (List.nth x 0) * prod_test (List.tl x);;

