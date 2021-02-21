open QCheck

let test = 
    Test.make ~count:1000 ~name:"Execrise 1" 
    (list neg_int) 
    (fun lst -> List.rev (List.rev lst) = lst);;

(* Test.check_exn test;; *)
let _ = QCheck_runner.run_tests [test];;
