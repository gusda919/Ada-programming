with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;  use  Ada.Float_Text_IO;



procedure Tentauppgift is
   
   type int_Row is array(1..5) of Integer;
   
   type Columns is array(1..2) of Int_Row;
   
 
   
   procedure Get(Column  : in out int_row) is 
      
      Int : Integer;
   begin
      
      for I in Column'Range loop
	 Get(Int);
	 Column(I):=Int;
	 
	 
	 end loop;
	 
   
   end Get;
   
   procedure Roll (Column : in out int_Row) is 
      
      
      First_Number: Integer;
      
   begin
      First_Number:= Column(Column'first);
     
      for I in Column'Range loop
	 

	 if I < Column'last then
	 Column(I):=Column(I+1);
	end if;
      
      end loop;
      Column(Column'Last):=First_Number;
      
   
      end Roll;
      
      
      procedure Put(Column : int_Row) is 
	 
      begin
	 
	  for I in Column'Range loop
      
      Put(Column(I),2);
   
   end loop;
	 New_Line;
	 
	 end Put;
   
      
   
      Column : Columns;
      
     
   
begin
   
   
   for I in Column'Range loop
      
      Get(Column(I));
      Roll(Column(I));
      Put(Column(I)); 
   end loop;
   
   
   
   
   
   
   
   
   
   end Tentauppgift;
