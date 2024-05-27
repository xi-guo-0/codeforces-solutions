let abbreviate_word word =
  let length = String.length word in
  if length > 10 then
    let first_char = String.get word 0 in
    let last_char = String.get word (length - 1) in
    let middle_length = length - 2 in
    Printf.sprintf "%c%d%c" first_char middle_length last_char
  else word

let () =
  let n = read_int () in
  for _ = 1 to n do
    let word = read_line () in
    print_endline (abbreviate_word word)
  done
