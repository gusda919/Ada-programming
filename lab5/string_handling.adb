with Ada.Text_IO;
use  Ada.Text_IO;

package body String_Handling is
   
   procedure Get(Input : out String_Type) is
      
   begin
      
      for I in Input.Char_Array'Range loop
	 Get(Input.Char_Array(I));
	 Input.Length := I;
	 exit when End_Of_Line;
      end loop;
      
   end Get;
   
   procedure Put(output : in String_Type) is
      
   begin
      
      for I in 1..output.length loop
	 Put(output.Char_Array(I));	 
      end loop;
      
   end Put;
   
end String_Handling;
