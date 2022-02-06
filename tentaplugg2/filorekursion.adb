with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;  use  Ada.Float_Text_IO;



procedure tentauppgift2 is
   
   type chars is array(1..2) of Character;
   
   procedure Get(S :  out Chars ; Int : out integer ) is
      
      
      
   begin
      
      
      Get(S(1));
      Get(S(2));
      Get(Int);
      
      
      
     
   end Get;
   
  procedure Put(F1 : in File_Type ; S : in Chars ; Int, visitIndex : in out Integer) is
     
     
     
   begin
      
      if VisitIndex = 0 then
	 Put(F1,S(1));
	 VisitIndex:= VisitIndex+1;
      
      end if;
      if Int > 0 then
	
	Put(F1,S(2));
        Int:=Int-1;
	Put(F1,S,Int, visitIndex);    
        
	  else
	  
	Put(F1,S(1));
     
       end if;
     end Put;
   
   
   
   
    F1: File_Type;
    S : Chars;
    Int : Integer;
    VisitIndex : Integer :=0;
begin
   
   Put("Mata in header");
   Get(S,Int);
   Open(F1, out_File, "HEADER.TXT");
   Put(F1,S,Int, VisitIndex);
   Close(F1);
   
   
   end tentauppgift2;
