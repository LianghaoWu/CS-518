procedure SqRt (x: int) returns (r: int)
   requires x >= 0 ;
   ensures r*r <= x ;
{
 var s: int ;
 r := 0;
 s := 1;
 while (s <= x)
    invariant r >= 0   ;
    invariant r*r < s ;
 {
   r := r + 1 ;
   s := (r+1) * (r+1) ;
 }
}
