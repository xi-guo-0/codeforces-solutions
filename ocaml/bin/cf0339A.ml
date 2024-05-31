let split_string s delim =
  let rec aux i j =
    if j >= String.length s then
      if i == j then [] else [String.sub s i (j - i)]
    else if s.[j] = delim then String.sub s i (j - i) :: aux (j + 1) (j + 1)
    else aux i (j + 1)
  in
  aux 0 0

let join_string lst delim = String.concat (String.make 1 delim) lst

let split_sort_join str =
  let sorted_list = List.sort compare (split_string str '+') in
  join_string sorted_list '+'

let () = print_endline (split_sort_join (read_line ()))
