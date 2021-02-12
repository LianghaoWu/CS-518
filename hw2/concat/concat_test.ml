open OUnit2
open Concat

let tests = "tests for concat" >::: [
    "empty" >:: (fun _ -> assert_equal "" (concat []));
    "abc" >:: (fun _ -> assert_equal "abc" (concat ["a";"b";"c"]));
]