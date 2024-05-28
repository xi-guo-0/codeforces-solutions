let () =
  let n = read_int () in
  let rec solve n =
    if n == 0 then 0
    else
      let s = read_line () in
      let t = if String.get s 1 == '+' then 1 else -1 in
      t + solve (n - 1)
  in
  Printf.printf "%d\n" (solve n)
