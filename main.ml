type op_t =
  | Push of int
  | Plus
  | Print

  
  let gen_header: string list = [
    "section .text";
    "global _start";
    "_start:"
  ]

  let gen_footer: string list = [
    "mov rax, 60";
    "mov rdi, 69";
    "syscall";
    "ret"
  ]
  let generate (ops: op_t list): string list = []

  let () = 
    let program = [Push 1; Push 2; Push 3; Plus; Plus; Print] in
    List.concat [gen_header; generate program; gen_footer] |> List.iter print_endline