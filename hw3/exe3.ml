open QCheck

(*Q1 *)
let gen = Gen.list_size (Gen.int_range 5 10) (Gen.int_range 0 100);;
let generator1 = Gen.generate1(gen);;
let generator = Gen.generate 3 gen;;

(*Q2 *)

let arb = QCheck.make gen;;

(*Q3 *)
let is_even n = 
  if n mod 2 = 0 then true
  else false;;

let rec rec_is_even lst = 
  if List.length lst = 1 then if is_even (List.hd lst) then true else false
  else if is_even (List.hd lst) then true else rec_is_even (List.tl lst);;

let test = 
    Test.make ~count:100 ~name:"Execrise 3" 
    arb
    (fun lst -> rec_is_even lst = true );;

let main_test = QCheck_runner.run_tests[
  test;
]
