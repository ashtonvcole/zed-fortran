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
((if_statement (end_if_statement) @end) @indent)
[
  (else_clause)
  (elseif_clause)
] @outdent

;; Loops
((do_loop_statement (end_do_loop_statement) @end) @indent)
((where_statement (end_where_statement) @end) @indent)

;; Derived types
((derived_type_definition (end_type_statement) @end) @indent)

;; Enums
((enum (end_enum_statement) @end) @indent)
