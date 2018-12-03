--  generated parser support file.
--  command line: wisitoken-bnf-generate.exe  --generate LR1 Ada_Emacs re2c PROCESS gpr.wy
--

--  Copyright (C) 2013 - 2018 Free Software Foundation, Inc.

--  This program is free software; you can redistribute it and/or
--  modify it under the terms of the GNU General Public License as
--  published by the Free Software Foundation; either version 3, or (at
--  your option) any later version.
--
--  This software is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
--  General Public License for more details.
--
--  You should have received a copy of the GNU General Public License
--  along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

with Interfaces.C;
with WisiToken;
with System;
package gpr_re2c_c is

   function New_Lexer
     (Buffer    : in System.Address;
      Length    : in Interfaces.C.size_t;
      Verbosity : in Interfaces.C.int)
     return System.Address
   with Import        => True,
        Convention    => C,
        External_Name => "gpr_new_lexer";
   --  Create the lexer object, passing it the full text to process.

   procedure Free_Lexer (Lexer : in out System.Address)
   with Import        => True,
        Convention    => C,
        External_Name => "gpr_free_lexer";
   --  Free the lexer object

   procedure Reset_Lexer (Lexer : in System.Address)
   with Import        => True,
        Convention    => C,
        External_Name => "gpr_reset_lexer";

   function Next_Token
     (Lexer         : in     System.Address;
      ID            :    out WisiToken.Token_ID;
      Byte_Position :    out Interfaces.C.size_t;
      Byte_Length   :    out Interfaces.C.size_t;
      Char_Position :    out Interfaces.C.size_t;
      Char_Length   :    out Interfaces.C.size_t;
      Line_Start    :    out Interfaces.C.int)
     return Interfaces.C.int
   with Import        => True,
        Convention    => C,
        External_Name => "gpr_next_token";

end gpr_re2c_c;
