open Scanf

let ceil_division a b =
  let a_float = Int64.to_float a in
  let b_float = Int64.to_float b in
  Int64.of_float (ceil (a_float /. b_float))

let () =
  let a, b, c = scanf "%Ld %Ld %Ld" (fun a b c -> (a, b, c)) in
  Printf.printf "%Ld " (Int64.mul (ceil_division a c) (ceil_division b c))
