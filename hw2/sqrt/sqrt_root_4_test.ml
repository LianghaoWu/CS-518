open OUnit2
open Sqrt_root_4

let test = "test for 0.5" >:: (fun _ -> assert_equal "0.707" (sqrt_root 0.5 3)) ;;

let _ = run_test_tt_main test;;