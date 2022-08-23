open Types;;

let data = [
    ("VST", Answers_VST.data);
  ] 

let render_answer a1 a2 = if a2="" then a1 else " [" ^ a1 ^ "](. \"" ^ a2 ^ "\")"

let lookup q d = match (List.find_map (function x -> match x with Q(q',a1,a2) when q=q' -> Some(render_answer a1 a2) | _ -> None) d) with Some s -> s | None -> ""

let render_item x =
  match x with
  | H s -> "| *" ^ s ^ "* |\n"
  | Q(q, a1, a2) -> "|" ^ q ^ "|" ^ String.concat "|" (List.map (function (_,d) -> lookup q d) data) ^ "|\n"
                  
let render_header = "| |" ^ String.concat "|" (List.map (function (toolname,_) -> toolname) data) ^ "|\n"
let render_sep = "|-|" ^ String.concat "|" (List.map (function (_,_) -> "-") data) ^ "|\n"
               
let render = render_header ^ render_sep ^ String.concat "" (List.map render_item Template.template)
                                            
                                            
let _ = Printf.printf "%s" render
