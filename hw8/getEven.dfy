method getEven(a : array?< int >) 
	requires a != null && a.Length > 0;
	modifies a;
	ensures forall i:int :: 0 <= i < a.Length ==> a[i] % 2 == 0;
{
	var index := 0;
	while index < a.Length 
		invariant 0 <= index <= a.Length;
		invariant forall j:int :: 0 <= j < index ==> a[j] % 2 == 0;
		decreases a.Length - index;
	{
		if (a[index] % 2 != 0) 
		{
			a[index] := a[index] + 1;
		}
		index := index + 1;
	}
}