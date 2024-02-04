let rec fibonacci (a, b, n) =
  if n <= 0 then a else fibonacci (b, a + b, n - 1)


let print_fibonacci n =
  let rec loop i =
    if i < n then (
      print_int (fibonacci (0, 1, i));
      print_string " ";
      loop (i + 1)
    )
  in loop 0

  
let () =
  print_endline "The first 10 Fibonacci numbers are:";
  print_fibonacci 10;
  print_newline ()
