procedure Sqr (n: int) returns (r: int)
   requires  n >= 0 ;
   ensures r == n*n ;
{
  var i, x : int;
  i := 0;
  r := 0;
  x := 1;
  while (i < n)
    invariant i <= n ;
    invariant x mod 2  != 0 ;
//    invariant r == i*i ;
  {
    i := i + 1;
    r := r + x;
    x := x + 2;
  }
}
