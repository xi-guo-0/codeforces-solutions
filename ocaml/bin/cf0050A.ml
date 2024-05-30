let is_even n = n mod 2 = 0

let calculate_ans x y =
  if is_even x then x / 2 * y
  else if is_even y then x * (y / 2)
  else x * y / 2

let () =
  let line = read_line () in
  let x, y = Scanf.sscanf line "%d %d" (fun x y -> (x, y)) in
  let ans = calculate_ans x y in
  Printf.printf "%d\n" ans
