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

let read_int_array () =
  let line = read_line () in
  let string_list = split_on_char ' ' line in
  let filtered_list = List.filter (fun s -> s <> "") string_list in
  List.map int_of_string filtered_list

let () =
  let test_cases = read_int_array () in
  let k = List.nth test_cases 1 in
  let lst = read_int_array () in
  let threshold = max 1 (List.nth lst (k - 1)) in
  let len = List.length (List.filter (fun x -> threshold <= x) lst) in
  Printf.printf "%d\n" len
