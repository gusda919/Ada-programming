with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


procedure Tydlig is
   
   type Character_Type is array(1..6) of Character;
     
   type Size_Type is array(1..7) of Integer;
   
   procedure Get_Text(text : out Character_Type) is
      
      
   begin
      
      for I in  1..6 loop
	 Get(Text(I));
	     
	     end loop;
   
   end Get_Text;
   
   procedure Get_size(Size : out Size_Type) is
      
      
   begin    
      for I in 1..7 loop
	 Get(Size(I));
	 
      end loop;
      
   end Get_size;
   
      
      procedure Put_Tydlig(C : in Character_Type ; N : in Size_Type) is
	 
	 
	 Size,utrop : integer;
      begin
	 
	 for I in 1..6 loop
	    
	    Size:=N(I);
      	    
	    for K in 1..Size loop
	       Put(C(I));
	       
	    end loop;
	    
	 end loop;
	 Utrop:=N(7);
	 
	 for I in 1..utrop loop
	    Put("!");
	 end loop;
	 
      end Put_Tydlig;
      
   C : Character_type ;
   N: Size_type;
   
begin
   Put("Mata in ett ord (6 tecken) : ");
   Get_Text(C);
   Put("Mata in heltal (7 stycken) : ");
   Get_Size(N);
   New_Line;
   Put_Tydlig(C,N);
   
   
  
   end Tydlig;
