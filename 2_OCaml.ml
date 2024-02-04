let filter_list lst =
  let n = List.length lst in
  if n mod 10 <> 0 then
    invalid_arg "The list length is not a multiple of 10."
  else
    List.fold_left (fun (i, acc) el ->
      if (i + 1) mod 2 <> 0 && (i + 1) mod 3 <> 0 then
        (i + 1, el :: acc)
      else
        (i + 1, acc)
    ) (0, []) lst
    |> snd
    |> List.rev ;;
    

(* Testing the function *)
try
  filter_list [1; 2; 3; 4; 5; 6; 7; 8; 9; 10]  (* This should work *)
  |> List.iter print_int;
  print_newline ();
  filter_list [1; 2; 3; 4; 5]  (* This should raise an error *)
  |> List.iter print_int;
with
  Invalid_argument e -> print_endline e ;;
