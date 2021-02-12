open OUnit2 
open Add 

let tests = "tests for add" >::: [
    "7 1" >:: (fun _ -> assert_equal 8 (add 7 1));
    "1 2" >:: (fun _ -> assert_equal 3 (add 1 2));
    "4 5" >:: (fun _ -> assert_equal 9 (add 4 5));
]

let _ = run_test_tt_main tests;;