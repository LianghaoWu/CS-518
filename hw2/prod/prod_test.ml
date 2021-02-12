open OUnit2
open Prod

let tests = "test suite for prod" >::: [
  "empty" >:: (fun _ -> assert_equal 1 (prod_test []) ~printer:string_of_int);
  "zero" >:: (fun _ -> assert_equal 0 (prod_test [0;1;2;3;]) ~printer:string_of_int);
  "onetwothree" >:: (fun _ -> assert_equal 6 (prod_test [1;2;3;]) ~printer:string_of_int);
]

let _ = run_test_tt_main tests;;