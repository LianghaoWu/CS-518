procedure catching (x: int) returns (y: int)
    requires x >= 0 ;
    ensures y == x ;
{
   y := 0 ;
   while ( y < x )
       invariant y <= x  ;
   {
     y := y + 1;
   }
}
   