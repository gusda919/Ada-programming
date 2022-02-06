with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Stonehenges is
   
  procedure Size(rest: in  Integer ; Henge_Size,Rocks_Left,rocks : in out integer) is
	
      
     
  begin
     
    
  
     Rocks_Left:=Rocks_Left-Henge_Size;
     Put(Henge_size,Width=>0);
     Rocks:=Rocks+Henge_size;
     Henge_size:=Henge_size-4;
   
     
     if Rocks_left <= 0 then
    Put("-henge");
    Put(".");
    New_Line;
    Put((Rest-Rocks),Width=>0);
    Put(" sten(ar) ");
    
 else  
           Put("-henge ");
	   Put(" i en ");
	   size(Rest,Henge_Size,Rocks_Left,rocks);
	   
    
      end if;
    
    
     end Size;
     

  
  procedure Henges(Rest,Stenar, omkrets : in Integer) is
     
     Henge_Size,Rocks_Left,rocks : Integer;
  begin
     Henge_Size:=Omkrets;
     Rocks_Left:=Stenar-4;
     Rocks:=0;
     Put("Bygg en ");
     Size(Rest,Henge_Size,Rocks_Left,rocks);
     
	    

     
   
     
  end Henges;
  
   
   
   Stenar, Omkrets,Rocks_left, Henge,rest : Integer;
   
begin
   Put("Mata in totala antalet stenar: ");
   Get(Stenar);
   Put("Mata in maximal omkrets för yttersta henge: ");
   Get(Omkrets);
   Rest:=stenar+0;
  
   
     if Stenar mod 2 = 1 then
	 Stenar:=(Stenar-1);
	 end if;
	 
	 if Omkrets /= 4 then
	    if Omkrets mod 2 = 0 then
	       Omkrets:=Omkrets-2;
	    else
	       Omkrets:=Omkrets-1;
	       if Omkrets /= 4 then
		  Omkrets:=Omkrets-2;
	       end if;
	       
	    end if;	    
	 end if;
      
      Henges(Rest,Stenar,Omkrets);
      
      
   
   
   
end Stonehenges;
