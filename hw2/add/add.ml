let add x y = 
    if x mod 7 = 0 then 0 (*bug here*) else
    x + y