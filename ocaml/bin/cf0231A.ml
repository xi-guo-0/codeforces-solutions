let solve_problem () =
  let n = Scanf.scanf "%d\n" (fun x -> x) in
  let rec count_capable_students n =
    if n = 0 then 0
    else
      let a, b, c = Scanf.scanf "%d %d %d\n" (fun a b c -> (a, b, c)) in
      let capable_students = if a + b + c >= 2 then 1 else 0 in
      capable_students + count_capable_students (n - 1)
  in
  Printf.printf "%d\n" (count_capable_students n)

let () = solve_problem ()
