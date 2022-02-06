with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;  use  Ada.Float_Text_IO;






procedure  NyTenta is
   
    type Row_Type is 
     array (1..10) of Character;
   
   type String_Type is
      record
	 Row: Row_type ;
	 Length : Integer;
      end record;
   
   
   procedure Get(Text : out String_Type) is

   begin
      
      Text.Length:=1;
      while not End_Of_Line loop
	Get(Text.Row(Text.length));
	Text.length:=Text.length+1;
        	if Text.Length>10 then
	   exit;
	   end if;
    end loop;
      
   end Get;
   
      procedure Draw_row(S : in String_Type) is
      
      begin
	 
	 for i in 1..S.Length-1 loop
	      Put("  --  ");
	  
	      
	      end loop;
	 New_Line;
	 for I in 1..S.Length-1 loop
	    
	  
	    Put(" !");
	    Put(S.Row(I));
	    Put(S.Row(I));
	    Put("! ");
	   
	    
	 end loop;
	 
	 New_Line;
       	 for i in 1..S.Length-1 loop
	      Put("  --  ");
	     
	      
	      end loop;
	 
	 
	 
     
    end Draw_row;
    
  function  remove (slot_int : in Integer ;  S : String_type) return String_type is 
      
  
     
     
   begin
      
    
      
  
      

	 return temp ;
   
  end  remove;
   
   
    First_Row, Second_row : String_type;
    Row_Int, Slot_Int : Integer;
   
begin
   
   
   
   Put("Mata in rad 1: ");
   Get(First_Row);
   Skip_Line;
   Put("Mata in rad 2: ");
   Get(second_Row);
   Draw_Row(First_Row);
   New_Line;
   Draw_Row(Second_Row);

   Put("Mata in kulor att ta bort. Avsluta med 0 0. ");
   loop
       Put("Mata in rad och kula: ");
   Get(Row_Int);
   Get(Slot_Int);
  
   if Row_Int = 1 then
     
      
      Draw_Row(Remove(Slot_int, First_Row ));
      Draw_Row(Second_Row);
      end if;
  
      if Row_Int = 2 then
	 
      Draw_Row(Second_Row);
      Draw_Row(Remove( Slot_Int ,Second_Row));
      
    end if;
    
   end loop;
   
   
end NyTenta;
