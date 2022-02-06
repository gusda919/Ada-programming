with Ada.Text_Io; use Ada.Text_IO;
with Ada.Integer_Text_IO; use  Ada.Integer_Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;


procedure Falt is
   
   type Integer_Array is array (1..3) of float;
   
   type Sum_Array is array (1..4) of Integer_Array;
  
   
   
   
   
   Integers : Integer_Array;
   Sum : Sum_Array;
   Sum_Amount : float  :=0.00;
   
begin
  
   -- inmating
   for i in Sum'range loop
      
      
      for J in Integers'range loop
	 
	
	Get(Integers(J));   
	     end loop;
	 
	 Sum(i):=Integers;
	
	 
	    
	    
	 
   end loop;
   
   
   -- summering
   for I in Sum'Range loop
      
      for j of Sum(i)  loop
	 
          Sum_Amount := Sum_Amount + j;
         
      
          end loop;
	  
	 
	  end loop;
     Put(Sum_Amount,2,2,0);
end Falt;
