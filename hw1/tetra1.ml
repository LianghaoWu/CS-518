let rec tetra1 n = 
  if n==0 then 0 
  else if n==1 then 1
  else if n==2 then 1
  else if n==3 then 2
  else (tetra1 (n-1)) + tetra1 (n-2) +  tetra1 (n-3) + tetra1(n-4);;

(*
    let rec tetra1 n = 
    if n==0 then 0 
    else if n==1 then 1
    else if n==2 then 1
    else if n==3 then 2
    else tetra1 n-1 + tetra1 n-2 +  tetra1 n-3 + tetra1 n-4;;
*)