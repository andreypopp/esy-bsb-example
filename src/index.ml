module Let_syntax = struct
  let bind ~f = function
    | Some v -> f v
    | None -> None
end

let (v : int option) =
  let%bind n = Some 40 in
  Some (n + 2)
