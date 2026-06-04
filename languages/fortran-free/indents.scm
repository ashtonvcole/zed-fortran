;; Program structuring blocks
((interface (end_interface_statement) @end) @indent)
((module (end_module_statement) @end) @indent)
((submodule (end_submodule_statement) @end) @indent)
((program (end_program_statement) @end) @indent)

;; Functions, subroutines, and procedures
((subroutine (end_subroutine_statement) @end) @indent)
((module_procedure (end_module_procedure_statement) @end) @indent)
((function (end_function_statement) @end) @indent)

;; Conditionals
; This was very tricky to implement
; due to quirks of the current grammar
; and a lack of transparency of tag mechanics
; from Zed.
(if_statement "then" @start) @indent
(if_statement (elseif_clause "then" @start)) @indent
(if_statement (else_clause "else" @start)) @indent
(if_statement (elseif_clause) @end @outdent) @indent
(if_statement (else_clause) @end @outdent) @indent
(if_statement (end_if_statement) @end) @indent

;; Loops
((do_loop_statement (end_do_loop_statement) @end) @indent)
((where_statement (end_where_statement) @end) @indent)

;; Derived types
((derived_type_definition (end_type_statement) @end) @indent)

;; Enums
((enum (end_enum_statement) @end) @indent)
