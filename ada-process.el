;;; ada-process.el --- Generated parser support file  -*- lexical-binding:t -*-
;;  command line: wisitoken-bnf-generate.exe  --generate LR1 Ada_Emacs re2c PROCESS text_rep ada.wy

;;  Copyright (C) 2013 - 2019 Free Software Foundation, Inc.

;;  This program is free software; you can redistribute it and/or
;;  modify it under the terms of the GNU General Public License as
;;  published by the Free Software Foundation; either version 3, or (at
;;  your option) any later version.
;;
;;  This software is distributed in the hope that it will be useful,
;;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;;  General Public License for more details.
;;
;;  You should have received a copy of the GNU General Public License
;;  along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

(require 'wisi-process-parse)

(defconst ada-process-token-table
  [WHITESPACE
   NEW_LINE
   COMMENT
   ABS
   ACCEPT
   ABORT
   ABSTRACT
   ACCESS
   ALIASED
   ALL
   AND
   ARRAY
   AT
   BEGIN
   BODY
   CASE
   CONSTANT
   DECLARE
   DELAY
   DELTA
   DIGITS
   DO
   ELSE
   ELSIF
   END
   ENTRY
   EXCEPTION
   EXIT
   FOR
   FUNCTION
   GENERIC
   GOTO
   IF
   IN
   INTERFACE
   IS
   LIMITED
   LOOP
   MOD
   NEW
   NOT
   NULL
   OF
   OR
   OTHERS
   OUT
   OVERRIDING
   PACKAGE
   PRAGMA
   PRIVATE
   PROCEDURE
   PROTECTED
   RAISE
   RANGE
   RECORD
   REM
   RENAMES
   REQUEUE
   RETURN
   REVERSE
   SEPARATE
   SELECT
   SOME
   SUBTYPE
   SYNCHRONIZED
   TAGGED
   TASK
   TERMINATE
   THEN
   TYPE
   UNTIL
   USE
   WHEN
   WHILE
   WITH
   XOR
   LEFT_PAREN
   RIGHT_PAREN
   AMPERSAND
   AT_SIGN
   BAR
   BOX
   COLON
   COLON_EQUAL
   COMMA
   DOT
   DOT_DOT
   EQUAL
   EQUAL_GREATER
   GREATER
   GREATER_EQUAL
   GREATER_GREATER
   LESS
   LESS_EQUAL
   LESS_LESS
   MINUS
   PLUS
   SEMICOLON
   SLASH
   SLASH_EQUAL
   STAR
   STAR_STAR
   TICK_1
   TICK_2
   NUMERIC_LITERAL
   IDENTIFIER
   STRING_LITERAL
   CHARACTER_LITERAL
   Wisi_EOI
   wisitoken_accept
   abstract_limited_synchronized_opt
   abstract_limited_opt
   abstract_tagged_limited_opt
   abstract_subprogram_declaration
   accept_statement
   access_definition
   actual_parameter_part
   actual_parameter_part_opt
   aggregate
   aliased_opt
   and_interface_list_opt
   array_type_definition
   aspect_clause
   aspect_specification_opt
   assignment_statement
   association_opt
   association_list
   asynchronous_select
   at_clause
   attribute_reference
   attribute_designator
   binary_adding_operator
   block_label
   block_label_opt
   block_statement
   body_g
   body_stub
   case_expression
   case_expression_alternative
   case_expression_alternative_list
   case_statement
   case_statement_alternative
   case_statement_alternative_list
   compilation_unit
   compilation_unit_list
   component_clause
   component_clause_list
   component_declaration
   component_definition
   component_item
   component_list
   component_list_opt
   compound_statement
   conditional_entry_call
   conditional_quantified_expression
   constant_opt
   constraint
   constraint_opt
   declaration
   declarations
   declarative_part_opt
   delay_alternative
   delay_statement
   derived_type_definition
   direct_name
   direct_name_opt
   discrete_choice
   discrete_choice_list
   discrete_subtype_definition
   discrete_subtype_definition_list
   discriminant_part_opt
   discriminant_specification_opt
   discriminant_specification_list
   elsif_expression_item
   elsif_expression_list
   elsif_statement_item
   elsif_statement_list
   entry_body
   entry_body_formal_part
   entry_call_alternative
   entry_declaration
   enumeration_literal
   enumeration_literal_list
   enumeration_representation_clause
   enumeration_type_definition
   exception_choice
   exception_choice_list
   exception_declaration
   exception_handler
   exception_handler_list
   exception_handler_list_opt
   exit_statement
   expression
   expression_opt
   expression_function_declaration
   extended_return_object_declaration
   extended_return_object_declaration_opt
   extended_return_statement
   factor
   formal_object_declaration
   formal_part
   formal_subprogram_declaration
   formal_type_declaration
   formal_type_definition
   formal_derived_type_definition
   formal_package_declaration
   formal_package_actual_part
   full_type_declaration
   function_specification
   general_access_modifier_opt
   generic_declaration
   generic_formal_part
   generic_formal_parameter_declarations
   generic_formal_parameter_declaration
   generic_instantiation
   generic_package_declaration
   generic_renaming_declaration
   generic_subprogram_declaration
   goto_label
   handled_sequence_of_statements
   identifier_list
   identifier_opt
   if_expression
   if_statement
   incomplete_type_declaration
   index_constraint
   index_subtype_definition
   index_subtype_definition_list
   interface_list
   interface_type_definition
   iteration_scheme
   iterator_specification
   iterator_specification_opt
   loop_statement
   membership_choice_list
   membership_choice
   mod_clause_opt
   mode_opt
   multiplying_operator
   name_list
   name
   name_opt
   null_exclusion_opt
   null_exclusion_opt_name_type
   null_procedure_declaration
   object_declaration
   object_renaming_declaration
   overriding_indicator_opt
   package_body
   package_body_stub
   package_declaration
   package_renaming_declaration
   package_specification
   parameter_and_result_profile
   parameter_profile_opt
   parameter_specification
   parameter_specification_list
   paren_expression
   pragma_g
   primary
   private_extension_declaration
   private_type_declaration
   procedure_call_statement
   procedure_specification
   proper_body
   protected_body
   protected_body_stub
   protected_definition
   protected_operation_item
   protected_operation_item_list
   protected_operation_item_list_opt
   protected_opt
   protected_type_declaration
   qualified_expression
   quantified_expression
   quantifier
   raise_expression
   raise_statement
   range_g
   range_list
   real_range_specification_opt
   record_definition
   record_representation_clause
   relation_and_list
   relation_and_then_list
   relation_or_list
   relation_or_else_list
   relation_xor_list
   relation
   relational_operator
   renaming_declaration
   requeue_statement
   result_profile
   return_subtype_indication
   selected_component
   selective_accept
   select_alternative
   select_alternative_list
   select_alternative_list_opt
   select_statement
   sequence_of_statements
   sequence_of_statements_opt
   simple_expression
   simple_return_statement
   simple_statement
   single_protected_declaration
   single_task_declaration
   statement
   subprogram_body
   subprogram_body_stub
   subprogram_declaration
   subprogram_default
   subprogram_renaming_declaration
   subprogram_specification
   subtype_declaration
   subtype_indication
   subunit
   task_body
   task_body_stub
   task_definition
   task_type_declaration
   term
   term_list
   tick
   timed_entry_call
   triggering_alternative
   type_declaration
   type_definition
   variant_part
   variant_list
   variant
   unary_adding_operator
   use_clause
   with_clause
   ])

(defconst ada-process-face-table
  [
   font-lock-constant-face
   font-lock-function-name-face
   font-lock-type-face
   nil
   ])

(defconst ada-process-repair-image
  '(
   (ABS . "abs")
   (ACCEPT . "accept")
   (ABORT . "abort")
   (ABSTRACT . "abstract")
   (ACCESS . "access")
   (ALIASED . "aliased")
   (ALL . "all")
   (AND . "and")
   (ARRAY . "array")
   (AT . "at")
   (BEGIN . "begin")
   (BODY . "body")
   (CASE . "case")
   (CONSTANT . "constant")
   (DECLARE . "declare")
   (DELAY . "delay")
   (DELTA . "delta")
   (DIGITS . "digits")
   (DO . "do")
   (ELSE . "else")
   (ELSIF . "elsif")
   (END . "end")
   (ENTRY . "entry")
   (EXCEPTION . "exception")
   (EXIT . "exit")
   (FOR . "for")
   (FUNCTION . "function")
   (GENERIC . "generic")
   (GOTO . "goto")
   (IF . "if")
   (IN . "in")
   (INTERFACE . "interface")
   (IS . "is")
   (LIMITED . "limited")
   (LOOP . "loop")
   (MOD . "mod")
   (NEW . "new")
   (NOT . "not")
   (NULL . "null")
   (OF . "of")
   (OR . "or")
   (OTHERS . "others")
   (OUT . "out")
   (OVERRIDING . "overriding")
   (PACKAGE . "package")
   (PRAGMA . "pragma")
   (PRIVATE . "private")
   (PROCEDURE . "procedure")
   (PROTECTED . "protected")
   (RAISE . "raise")
   (RANGE . "range")
   (RECORD . "record")
   (REM . "rem")
   (RENAMES . "renames")
   (REQUEUE . "requeue")
   (RETURN . "return")
   (REVERSE . "reverse")
   (SEPARATE . "separate")
   (SELECT . "select")
   (SOME . "some")
   (SUBTYPE . "subtype")
   (SYNCHRONIZED . "synchronized")
   (TAGGED . "tagged")
   (TASK . "task")
   (TERMINATE . "terminate")
   (THEN . "then")
   (TYPE . "type")
   (UNTIL . "until")
   (USE . "use")
   (WHEN . "when")
   (WHILE . "while")
   (WITH . "with")
   (XOR . "xor")
   (LEFT_PAREN . "(")
   (RIGHT_PAREN . ")")
   (AMPERSAND . "&")
   (AT_SIGN . "@")
   (BAR . "|")
   (BOX . "<>")
   (COLON . ":")
   (COLON_EQUAL . ":=")
   (COMMA . ",")
   (DOT . ".")
   (DOT_DOT . "..")
   (EQUAL . "=")
   (EQUAL_GREATER . "=>")
   (GREATER . ">")
   (GREATER_EQUAL . ">=")
   (GREATER_GREATER . ">>")
   (LESS . "<")
   (LESS_EQUAL . "<=")
   (LESS_LESS . "<<")
   (MINUS . "-")
   (PLUS . "+")
   (SEMICOLON . ";")
   (SLASH . "/")
   (SLASH_EQUAL . "/=")
   (STAR . "*")
   (STAR_STAR . "**")
   (TICK_1 . "'")
   (TICK_2 . "'")
   (NUMERIC_LITERAL . "1234567890")
   (IDENTIFIER . "A_Bogus_Identifier")
   (STRING_LITERAL . "\"\"")
   (CHARACTER_LITERAL . "' '")
   ))

(provide 'ada-process)
