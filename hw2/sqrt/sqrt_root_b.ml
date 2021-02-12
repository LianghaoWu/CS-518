(* 
    statement coverage can't be achieved because String.sub s 0 (n+1) and sub_s s 0 n can never be executed at single run.
 *)

let rec sub_s s flag n =
  if String.length s = 2 then "0."
  else if s.[flag] = '0' or s.[flag] = '.'  then sub_s s (flag + 1) n 
  else if flag >= (String.length s) or (flag + n) >= (String.length s) then s else 
    String.sub s 0 (flag + n);;

let sqrt_root x n =
  let root = (sqrt x) in
  let s = (Float.to_string root) in
  if root >= 1.0 then String.sub s 0 (n+1) else sub_s s 0 n;;