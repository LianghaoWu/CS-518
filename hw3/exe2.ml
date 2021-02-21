open QCheck
open Float

let test = 
    Test.make ~count:1000 ~name:"Execrise 2" 
    float
    (fun flt -> to_int (floor flt) = (truncate flt));; 


(* let _ = QCheck_runner.run_tests [test];; *)
Test.check_exn test;;


  
