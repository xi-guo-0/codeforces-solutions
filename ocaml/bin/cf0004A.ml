let () =
  let n = read_int () in
  print_endline (if 2 < n && n mod 2 == 0 then "YES" else "NO")
