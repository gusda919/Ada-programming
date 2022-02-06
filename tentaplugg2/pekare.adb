with Ada.Text_IO;		use Ada.Text_IO;
with Ada.Integer_Text_IO;	use Ada.Integer_Text_IO;

procedure List_Main is
   
   
    
   type Ints_Array_Type is
     array (0..999) of Integer;
   
   
   type List_Type is
      record
	 Data : Ints_Array_Type;
	 Size : Integer := 0;
      end record;
   
   
   
   procedure Insert(List : in out List_Type ; N : in integer) is
      
      
      
      
   begin 
     
      
      
      
      for I in 0..999 loop
	 
	 
	 if(List.Size = 0) then
	    
	    if(N > 0 ) then
	       List.Data(List.Size+1):=N;
	       List.Size:=List.Size + 1;
	       
	       end if;
	    

	    exit;
	 end if;
	 
         if(List.Size > 0 ) then
	     if(N > 0 ) then
		List.Data(List.Size+1):=N;
		 List.Size:=List.Size + 1;
		 end if;
	   
	    
	    exit;
	  end if;
	    end loop;
	 
      
      
      
      
      end Insert;
   
   
   
   
   
   procedure Put(List : in List_type) is
      
      
     function Index_Check(index : in integer) return Integer is
	 
	 
	 Temp: Integer;
      begin

	 
	 for I in reverse 1...Index loop
	    
	    Temp:=I;
	 end loop;
	 
	 
	 
      return temp;
      
      end Index_Check;
      
      
      
      
      Temp : List_Type;
      Temp_Int : Integer:=0;
   begin
      Temp:=List;
  
      
    
      if( Temp.Size > 0 ) then
      
	 Put(List.Data(Index_Check(Temp.size)),4);
	
        Temp.Size:=Temp.Size+1;
          Put(temp);
      end if;
      
   
      
      
     end Put;
   
   
   
   
   
   
   L : List_Type;
   N : Integer;
begin
   Put("Mata in heltal, avsluta med 0: ");
   loop
      Get(N);
      exit when N = 0;
      Insert(L, N);
   end loop;
   Put("Listan har ");
   Put(L.Size, Width => 0);
   Put_Line(" element.");
   Put("I listan ligger f�?�?ljande tal: ");
   Put(L);
end List_Main;
