(OCaml_toplevel
 ((parts
   (((name "")
     (chunks
      (((ocaml_code "#use \"topfind\";;") (toplevel_responses ()))
       ((ocaml_code "#thread;;") (toplevel_responses ()))
       ((ocaml_code "#camlp4o;;") (toplevel_responses ()))
       ((ocaml_code "#require \"core\";;") (toplevel_responses ()))
       ((ocaml_code "#require \"ppx_jane\";;") (toplevel_responses ()))
       ((ocaml_code "open Core_kernel;;") (toplevel_responses ())))))
    ((name 1)
     (chunks
      (((ocaml_code
          "type 'a compact_array = \
         \n  | Array of 'a array\
         \n  | Bytes of bytes\
         \n;;")
        (toplevel_responses ())))))
    ((name 1.1)
     (chunks
      (((ocaml_code
          "let of_bytes x = Bytes x\
         \nlet of_array x = Array x\
         \n\
         \nlet length = function\
         \n  | Array a -> Array.length a\
         \n  | Bytes s -> Bytes.length s\
         \n\
         \nlet get t i =\
         \n  match t with\
         \n  | Array a -> a.(i)\
         \n  | Bytes s -> s.[i]\
         \n\
         \nlet set t i v =\
         \n  match t with\
         \n  | Array a -> a.(i) <- v\
         \n  | Bytes s -> s.[i] <- v\
         \n\
         \n[%%expect];;")
        (toplevel_responses ())))))
    ((name 2)
     (chunks
      (((ocaml_code
          "type 'a gadt_compact_array =\
         \n  | Array : 'a array -> 'a t\
         \n  | Bytes : bytes -> 'a t\
         \n;;")
        (toplevel_responses ())))))
    ((name 2.1)
     (chunks
      (((ocaml_code "Array [|1;2;3|];;") (toplevel_responses ()))
       ((ocaml_code "Array [|1.0;2.0;3.0|];;") (toplevel_responses ()))
       ((ocaml_code  "# part 2.2\
                    \n\
                    \n  Bytes \"foo\";;")
        (toplevel_responses ())))))
    ((name 3)
     (chunks
      (((ocaml_code
          "type 'a t = | Array : 'a array -> 'a t\
         \n            | Bytes : bytes -> char t\
         \n;;")
        (toplevel_responses ())))))
    ((name 3.1)
     (chunks
      (((ocaml_code
          "let length t = \
         \n  match t with\
         \n  | Bytes b -> Bytes.length b\
         \n  | Array a -> Array.length a\
         \n;;")
        (toplevel_responses ())))))
    ((name 3.2)
     (chunks
      (((ocaml_code
          "let length (type el) (t:el t) = \
         \n  match t with\
         \n  | Bytes b -> Bytes.length b\
         \n  | Array a -> Array.length a\
         \n;;")
        (toplevel_responses ())))))
    ((name 3.3)
     (chunks
      (((ocaml_code
          "module Compact_array = struct\
         \n\
         \n  type 'a t = | Array : 'a array -> 'a t\
         \n              | Bytes : bytes -> char t\
         \n\
         \n  let of_bytes x = Bytes x\
         \n  let of_array x = Array x\
         \n\
         \n  let length (type el) (t:el t) =\
         \n    match t with\
         \n    | Array a -> Array.length a\
         \n    | Bytes s -> Bytes.length s\
         \n\
         \n  let get (type el) (t:el t) i : el =\
         \n    match t with\
         \n    | Array a -> Array.get a i\
         \n    | Bytes s -> Bytes.get s i\
         \n\
         \n  let set (type el) (t:el t) i (v:el) =\
         \n    match t with\
         \n    | Array a -> Array.set a i v\
         \n    | Bytes s -> Bytes.set s i v\
         \n\
         \nend;;")
        (toplevel_responses ())))))
    ((name 10)
     (chunks
      (((ocaml_code
          "type value =\
         \n  | Int of int\
         \n  | Bool of bool\
         \n\
         \ntype expr = \
         \n  | Value of value\
         \n  | If    of expr * expr * expr\
         \n  | Gt    of expr * expr\
         \n  | Plus  of expr * expr\
         \n;;")
        (toplevel_responses ())))))
    ((name 11)
     (chunks
      (((ocaml_code
          "let max_expr x y =\
         \n  let i x = Value (Int x) in\
         \n  let x = i x in\
         \n  let y = i y in\
         \n  If (Gt (x,y), x, y)\
         \n;;")
        (toplevel_responses ()))
       ((ocaml_code "max_expr 3 4;;") (toplevel_responses ())))))
    ((name 12)
     (chunks
      (((ocaml_code
          "let ill_typed x y =\
         \n  let i x = Value (Int x) in\
         \n  let x = i x in\
         \n  let y = i y in\
         \n  Plus (Gt (x,y), y)\
         \n;;")
        (toplevel_responses ()))
       ((ocaml_code "ill_typed 3 4;;") (toplevel_responses ())))))
    ((name 13)
     (chunks
      (((ocaml_code
          "let rec eval expr =\
         \n  let eval_int expr =\
         \n    match eval expr with\
         \n    | Int x -> x\
         \n    | Bool _ -> failwith \"expected int, found bool\"\
         \n  in\
         \n  let eval_bool expr =\
         \n    match eval expr with\
         \n    | Bool x -> x\
         \n    | Int _ -> failwith \"expected bool, found int\"\
         \n  in\
         \n  match expr with\
         \n  | Value v    -> v\
         \n  | If (c,t,e) -> if eval_bool c then eval t else eval e\
         \n  | Gt (x,y)   -> Bool (eval_int x > eval_int y)\
         \n  | Plus (x,y) -> Int (eval_int x + eval_int y)\
         \n;;")
        (toplevel_responses ())))))
    ((name 14)
     (chunks
      (((ocaml_code "eval (max_expr  3 4);;") (toplevel_responses ()))
       ((ocaml_code "eval (ill_typed 3 4);;") (toplevel_responses ())))))
    ((name 15)
     (chunks
      (((ocaml_code
          "type _ value =\
         \n  | Int  : int  -> int value\
         \n  | Bool : bool -> bool value\
         \n;;")
        (toplevel_responses ()))
       ((ocaml_code
          "type _ expr =\
         \n  | Value : 'a value                      -> 'a expr\
         \n  | If    : bool expr * 'a expr * 'a expr -> 'a expr\
         \n  | Gt    : 'a expr * 'a expr             -> bool expr\
         \n  | Plus  : int expr * int expr           -> int expr\
         \n;;")
        (toplevel_responses ())))))
    ((name 16)
     (chunks
      (((ocaml_code
          "let max_expr x y =\
         \n  let i x = Value (Int x) in\
         \n  let x = i x in\
         \n  let y = i y in\
         \n  If (Gt (x,y), x, y)\
         \n;;")
        (toplevel_responses ()))
       ((ocaml_code "max_expr 3 4;;") (toplevel_responses ())))))
    ((name 17)
     (chunks
      (((ocaml_code
          "let ill_typed x y =\
         \n  let i x = Value (Int x) in\
         \n  let x = i x in\
         \n  let y = i y in\
         \n  Plus (Gt (x,y), y)\
         \n;;")
        (toplevel_responses ())))))
    ((name 18)
     (chunks
      (((ocaml_code
          "let rec eval = function\
         \n  | Value (Int x)  -> x\
         \n  | Value (Bool x) -> x\
         \n  | If    (c,t,e)  -> if eval c then eval t else eval e\
         \n  | Gt    (x,y)    -> eval x > eval y\
         \n  | Plus  (x,y)    -> eval x + eval y\
         \n;;")
        (toplevel_responses ())))))
    ((name 19)
     (chunks
      (((ocaml_code
          "let rec eval : type a . a expr -> a = function\
         \n  | Value (Int x)  -> x\
         \n  | Value (Bool x) -> x\
         \n  | If    (c,t,e)  -> if eval c then eval t else eval e\
         \n  | Gt    (x,y)    -> eval x > eval y\
         \n  | Plus  (x,y)    -> eval x + eval y\
         \n;;")
        (toplevel_responses ())))))))
  (matched true)))
