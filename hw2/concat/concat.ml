let concat s =
  if List.length s == 0 then "a" else  (*logic bug here *)
  String.concat "" s;;
