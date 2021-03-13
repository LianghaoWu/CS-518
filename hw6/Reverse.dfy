method Reverse(a: array?<char>) returns (b: array?<char>)
  requires  a != null 
  ensures b != null && a.Length == b.Length && forall i:: 0 <= i < a.Length && a[i] == b[a.Length - i -1] 
{
  b := new char[a.Length];
  var i := 0;
  while i < a.Length 
  invariant 0 <= i <= a.Length
  {
      b[a.Length - i -1] := a[i];
      i := i + 1;
  }
}