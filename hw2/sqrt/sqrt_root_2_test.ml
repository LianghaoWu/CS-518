open OUnit2
open Sqrt_root_2

let test = "test for 0.5" >:: (fun _ -> assert_equal "0.7" (sqrt_root 0.5 1)) ;;

let _ = run_test_tt_main test;;