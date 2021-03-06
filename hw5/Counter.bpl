var counter : int ;
procedure incrementCounter ()
  requires  counter := 1  ;
  ensures counter == 2  ;
  modifies counter ;
{
  counter := counter + 1;
}
