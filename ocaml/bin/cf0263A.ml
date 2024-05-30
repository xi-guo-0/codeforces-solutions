let rec split_on_char char_to_split string_to_split acc =
  try
    let index = String.index string_to_split char_to_split in
    let part = String.sub string_to_split 0 index in
    let rest =
      String.sub string_to_split (index + 1)
        (String.length string_to_split - index - 1)
    in
    split_on_char char_to_split rest (part :: acc)
  with Not_found -> List.rev (string_to_split :: acc)

let split_on_char char_to_split string_to_split =
  split_on_char char_to_split string_to_split []

let () =
  let one_position = ref (0, 0) in
  for i = 0 to 4 do
    let line = read_line () in
    let numbers =
      Array.of_list (List.map int_of_string (split_on_char ' ' line))
    in
    for j = 0 to 4 do
      if numbers.(j) = 1 then one_position := (i, j)
    done
  done ;
  let row, col = !one_position in
  let moves = abs (row - 2) + abs (col - 2) in
  print_endline (string_of_int moves)
