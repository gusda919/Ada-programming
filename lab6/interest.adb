with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Sequential_IO;

procedure Interest is
   
   
   type Input_Array_type is array(1..11) of Integer;
   type Interest_Array_type is array(1..10) of Integer;
   type  Interest_Record_type is record
      First_Name : String(1..20);
      sur_Name : String(1..20);
      Street_Adress : String(1..20);
      Postal_Code : String(1..20);
      amount : Integer;
      Interests : Interest_Array_Type;
      

   end record;

   package My_IO is new Ada.Sequential_IO(Interest_Record_type);
   
   function Input_check(Input_Array : in Input_Array_Type; Input: in Integer) return Boolean is
      
   begin
      
      for I in Input_Array_Type'Range loop
	 if Input_Array(I) = Input then
	    Return false;
	 end if;
      end loop;
      
      return true;
   end Input_check;
   
   
   
   F1: My_IO.File_Type;
   F2: File_Type;
   Interest_record: Interest_Record_type;
   
   Input_array : Input_Array_Type;
   Input, Last_Index : Integer;
   Index: Integer;

   
   
   Match : Boolean := False;
begin
   Input_Array:= (others => 17);
   Index:=1;
   Input:= 1;

   Last_Index:=0;

   
   
   
   Put_line(" Ange en följd av intressen 1 till 15, Max 10 st. Avsluta med 0: ");

   
   while Input /= 0 and Index /= 11 loop
      
      Get(Input);
      
      if Input > 0 and Input < 16 then
	 
	 if  Input_check(Input_Array, Input) then
	    
	    Input_Array(Index) := Input;
	    Index := Index +1;
	 end if;
      end if;
      
      
   end loop;
   

      Put("Resulterande indata: ");

      for I in 1..Index-1 loop
	 Put(Input_Array(I), 3);
	 
      end loop;
      
      
      
      New_Line;
      Put_line("KLART! Resultat på filen RESULT.TXT ");
      My_IO.Open(F1, My_IO.In_File,"REG.BIN");  
      Create(F2, Out_File, "RESULT.Txt");

   
   while not My_IO.End_Of_File(F1) loop
      My_IO.Read(F1, Interest_Record);
      
      for I in 1..Index loop
	 for K in 1..Interest_Record.amount loop
	    if Input_Array(I) =Interest_Record.Interests(K) then
	       Match := True;
	    end if;
	 end loop;
      end loop;
      
      if Match then
	 
	 for J in 1..60 loop
	    Put(f2, "-");
	 end loop;
	 New_Line(f2);
	 
	 Put(F2, (Interest_Record.Sur_Name));
	 Put(F2, ' ');
	 
	 Put(F2, (Interest_Record.First_Name));
	 Put(F2, ' ');	 
	 
	 Put(F2, (Interest_Record.Street_Adress));
	 Put(F2, ' ');
	 
	 Put(F2, (Interest_Record.Postal_code));
	 Put(F2, " ");
	 
	 Put(F2, "***");
	 Put(F2, " Intressen: ");
	 
	 
	 for I in 1..Index loop
	    for K in 1..Interest_Record.Amount loop
	       if Interest_Record.Interests(K) = Input_Array(I) then
		  if  Interest_Record.Interests(K) /= Last_Index then
		     
		     Put(F2, Interest_Record.Interests(k), Width=> 0);
		     Put(F2, ' ');
		  end if;
		  
		  Last_Index:= interest_Record.Interests(K);
		  
	       end if;
	    end loop;
	 end loop;
	 
	 Last_Index:=0;
	 
	 New_Line(F2);
	 Match:=False;
      end if;
   end loop;
   
   Close(F2);
   My_IO.Close(F1);
   
   
end Interest;

