;; Variable names
(identifier) @variable

;; Strings
(string_literal) @string

;; Numbers
(number_literal) @number

;; Booleans
(boolean_literal) @boolean

;; Comments
(comment) @comment

;; Built-in types, e.g. integer, real
[
 (intrinsic_type)
 ] @type.builtin

;; Other types
[
 "class"
 "endtype"
 "enumerator"
 "type"
 ] @type

;; Attributes of types
[
 "abstract"
 "allocatable"
 "dimension"
 "extends"
 "in"
 "inout"
 "intent"
 "optional"
 "out"
 "parameter"
 "pointer"
 "private"
 "public"
 "target"
 "value"
 ] @attribute

;; Use statement specifiers
[
 "intrinsic"
 "non_intrinsic"
 "only"
 ] @attribute

;; CUDA-specific attributes
[
 "attributes"
 "device"
 "global"
 "grid_global"
 "host"
 ] @attribute

;; Attributes of modules
[
 (none)
 "contains"
 "implicit"
 ] @attribute

;; Functions, subroutines, and procedures
[
 "endfunction"
 "endprocedure"
 "endsubroutine"
 "function"
 "procedure"
 "subroutine"
 ] @function

;; Enums
[
 "endenum"
 "enum"
 ] @enum

;; Keywords
[
 (default)
 (procedure_qualifier)
 "bind"
 "call"
 "continue"
 "cycle"
 "end"
 "equivalence"
 "exit"
 "format"
 "goto"
 "include"
 "import"
 "namelist"
 "print"
 "read"
 "return"
 "stop"
 "use"
 "write"
 ] @keyword

;; Program structuring blocks
[
 "case"
 "endinterface"
 "endmodule"
 "endprogram"
 "endselect"
 "endsubmodule"
 "interface"
 "module"
 "program"
 "select"
 "submodule"
 ] @keyword

;; Conditionals
[
 "else"
 "elseif"
 "elsewhere"
 "endif"
 "endwhere"
 "if"
 "then"
 "where"
 ] @keyword

;; Loops
[
 "do"
 "enddo"
 "forall"
 "while"
 ] @keyword

;; Operators
[
 "*"
 "+"
 "-"
 "/"
 "="
 "<"
 ">"
 "<="
 ">="
 "=="
 "/="
 ] @operator

[
 "\\.and\\."
 "\\.or\\."
 "\\.lt\\."
 "\\.gt\\."
 "\\.ge\\."
 "\\.le\\."
 "\\.eq\\."
 "\\.eqv\\."
 "\\.neqv\\."
 ] @keyword.operator

;; Brackets
[
 "("
 ")"
 "["
 "]"
 "<<<"
 ">>>"
 ] @punctuation.bracket

;; Delimiter
[
 "::"
 ","
 "%"
 ] @punctuation.delimiter

(parameters
  (identifier) @variable.parameter)

(program_statement
  (name) @namespace)

(module_statement
  (name) @namespace)

(submodule_statement
  (module_name) (name) @namespace)

(function_statement
  (name) @function)

(subroutine_statement
  (name) @function)

(module_procedure_statement
  (name) @function)

(end_program_statement
  (name) @namespace)

(end_module_statement
  (name) @namespace)

(end_submodule_statement
  (name) @namespace)

(end_function_statement
  (name) @function)

(end_subroutine_statement
  (name) @function)

(end_module_procedure_statement
  (name) @function)

(subroutine_call
  (identifier) @function)

(keyword_argument
  name: (identifier) @keyword)

(derived_type_member_expression
  (type_member) @property)

((identifier) @function (#match? @function "^(int|short|long|ifix|idint|aint|real|float|sngl|dble|dfloat|cmplx|conj|dcmplx|char|max|min|nint|anint|idnint|zext|abs|iabs|mod|sign|isign|dim|idim|len|index|ichar|lge|lgt|lle|llt|imag|sqrt|exp|log|log10|sin|sind|cos|cosd|tan|tand|asin|asind|acos|acosd|atan|atand|atan2|atan2d|sinh|cosh|tanh|iand|ior|not|ieor|ishft|ishftc|ibits|ibitset|btest|ibclr|adjustl|adjustr|all|allocated|any|bit_size|count|cshift|digits|dot_product|eoshift|epsilon|exponent|huge|kind|lbound|len_trim|matmul|maxexponent|maxloc|maxval|merge|minexponent|minloc|minval|nearest|pack|precision|present|product|radix|range|repeat|reshape|rrspacing|scale|scan|selected_int_kind|selected_real_kind|set_exponent|shape|size|spacing|spread|sum|tiny|transfer|transpose|ubound|unpack|verify)$"))
