open OUnit2
open Sqrt_root_3

let test = "test for 0" >:: (fun _ -> assert_equal "0." (sqrt_root 0. 5)) ;;

let _ = run_test_tt_main test;;