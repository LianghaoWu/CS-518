let sum_top4 x = 
  if List.length x == 0 then [0;] 
  else if List.length x == 1 then List.append x  [List.nth x 0;] 
  else if List.length x == 2 then List.append x  [List.nth x 0 + List.nth x 1;] 
  else if List.length x == 3 then List.append x [List.nth x 0 + List.nth x 1 + List.nth x 2;] 
  else  List.append (List.tl x) [List.nth x 0 + List.nth x 1 + List.nth x 2 + List.nth x 3;];;

let rec tetra2_list n = 
  if n == 0 then sum_top4 [] else 
  if n == 1 then sum_top4 [1;] else 
  if n == 2 then sum_top4 [1;1] else
  if n == 3 then sum_top4 [1;1;2] else
    sum_top4 (tetra2_list (n-1));;

let tetra2 n =
  if n == 0 then 0 else
  if n == 1 then 1 else 
  if n == 2 then 1 else 
  if n == 3 then 2 else
    List.nth (tetra2_list n) 3;;

let rec ascending n =
  if n == 0 then [0;] 
  else List.append (ascending (n-1)) [n;];;

ascending 5;;