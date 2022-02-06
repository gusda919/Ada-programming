with Ada.Text_IO;		use Ada.Text_IO;
with Ada.Integer_Text_IO;	use Ada.Integer_Text_IO;



procedure Tupg1 is
   
   type Order_String is array(1..9) of Character ;
   type String_Array is array(1..8) of Order_String;
   

   procedure Put_text( Var : in Order_String ) is 
      

      
   begin
      
      for I in Var'Range loop
	 
	 Put(Var(I));
      
      
     end loop;
   end Put_text;
   

   function Generate(var : in out integer) return integer is
      
     
     Code: Integer:=1; 
   begin
  
   
    for I in 1..var loop
    
    Code:=Code  * 2 ;
    end loop;
    
    return code;
   end Generate;
   
   
   
   

   orders : String_array:=("Cheese   ","Tomato   ","Onion    ","Pickle   ","Bacon    ","Dressing ","Ketchup  ","Mustard  ");
   Index, Sum_code: Integer;
   Char : Character;
  
begin 
   
   Sum_Code:=0;
   
   for I in  Orders'Range loop 
      
      Index:=0;
      Put("Do you want ");
      Put_Text(Orders(I)); 
      Put("? ");
      Get(Char);
      if Char = 'y' then
	 Index:=(I-1);
	 Sum_Code:=Sum_Code + Generate(Index);
	 end if;
      New_Line;
   end loop;
   
        Put("The code for this burger is ");
	Put(Sum_Code,0);
	
	 
	    
	    

   
   end Tupg1;
