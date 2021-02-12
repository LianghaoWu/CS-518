open OUnit2
open Sqrt_root

let tests = "tests for sqrt" >::: [
    "test for x = 0 n = 1" >:: (fun _ -> assert_equal "0." (sqrt_root 0. 1));
    "test for 0 < x < 1 n = 1" >:: (fun _ -> assert_equal "0.7" (sqrt_root 0.5 1));
    "test for x >= 1 n = 1" >:: (fun _ -> assert_equal "2." (sqrt_root 5. 1));
    "test for n > 1" >:: (fun _ -> assert_equal "0.2" (sqrt_root 0.04 1000));
]
let _ = run_test_tt_main tests;;