method zip(a : array?< int >, b : array?< int >) returns (c : array?< int >)
requires a != null && b != null && a.Length == b.Length && a.Length > 0 ;
ensures c != null && c.Length == a.Length + b.Length;
ensures forall i:int :: 0 <= i < c.Length && i % 2 == 0 ==> c[i] == a[i/2];
ensures forall i:int :: 0 <= i < c.Length && i % 2 != 0 ==> c[i] == b[(i-1)/2];
{
	var len := a.Length + b.Length;
  c := new int[len];
  
  var i := 0;
  while i < c.Length
  invariant i <= c.Length;
  invariant forall j:int :: 0 <= j < i && j % 2 == 0 ==> c[j] == a[j/2];
  invariant forall j:int :: 0 <= j < i && j % 2 != 0 ==> c[j] == b[(j-1)/2];
  decreases c.Length - i;
  {
  	if i % 2 == 0 {
  		c[i] := a[i/2];
  	}
  	if i % 2 != 0 {
  		c[i] := b[(i-1)/2];
  	}
  	i := i+1;
  }
}