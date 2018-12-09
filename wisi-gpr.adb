--  Abstract :
--
--  See spec
--
--  Copyright (C) 2017, 2018 Free Software Foundation, Inc.
--
--  This library is free software;  you can redistribute it and/or modify it
--  under terms of the  GNU General Public License  as published by the Free
--  Software  Foundation;  either version 3,  or (at your  option) any later
--  version. This library is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY;  without even the implied warranty of MERCHAN-
--  TABILITY or FITNESS FOR A PARTICULAR PURPOSE.

--  As a special exception under Section 7 of GPL version 3, you are granted
--  additional permissions described in the GCC Runtime Library Exception,
--  version 3.1, as published by the Free Software Foundation.

pragma License (Modified_GPL);

with Ada.Strings.Fixed;
package body Wisi.Gpr is

   overriding
   procedure Initialize
     (Data              : in out Parse_Data_Type;
      Descriptor        : access constant WisiToken.Descriptor;
      Source_File_Name  : in     String;
      Post_Parse_Action : in     Post_Parse_Action_Type;
      Line_Count        : in     WisiToken.Line_Number_Type;
      Params            : in     String)
   is
      use Ada.Strings.Fixed;
      First : Integer := Params'First;
      Last  : Integer := Index (Params, " ");
   begin
      Wisi.Initialize
        (Wisi.Parse_Data_Type (Data), Descriptor, Source_File_Name, Post_Parse_Action, Line_Count, "");

      if Params /= "" then
         --  must match [1] wisi-parse-format-language-options
         Gpr_Indent := Integer'Value (Params (First .. Last - 1));

         First := Last + 1;
         Last := Index (Params, " ", First);
         Gpr_Indent_Broken := Integer'Value (Params (First .. Last - 1));

         First := Last + 1;
         Gpr_Indent_When := Integer'Value (Params (First .. Params'Last));
      end if;
   end Initialize;

end Wisi.Gpr;
