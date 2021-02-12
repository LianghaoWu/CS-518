let rec sum_top_k k x =
  if k==0 then 0 
  else if k > List.length x then sum_top_k (List.length x) x
  else List.hd x + sum_top_k (k-1) (List.tl x);; 

(*
Don't know how to implement this
 *)