let compare_strings str1 str2 =
  let str1_lower = String.lowercase str1 in
  let str2_lower = String.lowercase str2 in
  if str1_lower < str2_lower then -1
  else if str1_lower > str2_lower then 1
  else 0

let () =
  let str1 = read_line () in
  let str2 = read_line () in
  let result = compare_strings str1 str2 in
  print_int result ; print_newline ()
