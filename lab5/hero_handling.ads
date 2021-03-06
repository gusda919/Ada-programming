with Ada.Integer_Text_IO, Ada.Text_IO, Ada.Float_Text_IO;
use Ada.Integer_Text_IO, Ada.Text_IO, Ada.Float_Text_IO;

package Hero_Handling is


   
   type Hero_Type is private;
   
   procedure Get_hero(hero : out Hero_Type);
   procedure Put_hero(hero : in Hero_Type);
   function  Get_Age(hero : in Hero_Type) return Integer;
   
   
private
   
   
    type Hero_Type is
      record
	 Name : String_Type;
	 Age : Integer;
	 Gender : String_type;
	 Weight : Float;
	 Haircolor : String_Type;
      end record;
    
    end Hero_Handling;
