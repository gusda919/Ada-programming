with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_text_IO; use Ada.Float_Text_IO;
with Ada.IO_Exceptions;     


procedure o1 is
   
    First: Float;
    last: Float;
    Steg: Float;
    Moms: Float;

begin
   
    
     loop
	   Put("Första pris: ");
	   Get(first);
	   
	     if(First > 0.0) then
                    exit;
                end if ;
	   
	      Put("felaktigt värde!");
	      New_Line;
	     
	      end loop;
	   

 
  
   loop
          
   Put("Sista pris: ");
   Get(last);
	 
	 if last > first then
                    exit;
                end if ;
	 
       	 Put("felaktigt värde!");
	 New_Line;

       

      end loop;

	 

   
   
  
   
   loop
      
      Put("steg: ");
      Get(steg);  
      
      if Steg > 0.0 then
	 exit;
	 end if;
     	 Put("felaktigt värde!");
         New_Line;
         
    
      end loop;
 

	   
 
   
       loop
	 
	    Put("Momsprocent: "); 
	    Get(Moms);
	    
	    if Moms > 0.0 then
                    exit;
                end if ;
	 
	 Put("Felaktigt värde!");
	 New_Line;
	
	    end loop;




	Put("============ Momstabell ============");
	New_Line;
	Put("Pris utan moms  Moms   Pris med moms");
	New_Line;
  
   
	-- 	for I in 1..integer((Last-First)/Steg) loop
	while First<=Last loop
	            Put("    ");
                    Put(first, fore => 2, aft => 2, exp => 0);
                    Put((First*Moms/100.0),  fore => 8, aft => 2, exp => 0);
                    Put(First*(Moms/100.0)+First,  fore => 9, aft => 2, exp => 0);
                    New_Line;

                    First := First + Steg;

            end loop;
   
   
end o1;
