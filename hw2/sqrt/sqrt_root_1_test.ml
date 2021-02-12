open OUnit2
open Sqrt_root_1

let test = "test for 1" >:: (fun _ -> assert_equal "0." (sqrt_root 0. 1)) ;;

let _ = run_test_tt_main test;;