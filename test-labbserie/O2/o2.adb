with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_text_IO; use Ada.Float_Text_IO;    






procedure O2  is
   
   function "-"(Int : in Integer ; Dec : in Float ) return Float is
      
      
      
      
   begin
      
      return Float(Int)- Dec;
      
      
      
      end;
   procedure String_Convert( Str : in out String ; Plural : out boolean) is
      
      
      
      
   begin
      
      
      if Str(Str'First + 4 ) = 's' then
	 
	 Plural := True;
	   
      else 
	 
	 Str(Str'First + 4):= 's';
	 Plural:= False;
	 end if;
  
      
      
   end;
   
   function  Is_True(Char : in Character) return Boolean is
      
      
      
      
      
   begin
      
      if Char = 's' or Char = 'S' then
	 
	 return True;
     end if;	 
     
     
     return False;
      
      end ;
   
   
   Int : Integer;
   Dec : Float;
   My_Bool : Boolean ;
   Str : String(1..5);
   Char : Character;
   
begin
   
   
   
   
   Put("Mate in ett heltal och ett flyttal: ");
   Get(Int);
   Get(Dec);
   Put("Diffrensen mellan dem är ");
   Put(Int-Dec,0,2,0);
   
   New_Line;
   Put("Skriv in ett 5 tecken långt engelskt substantiv: ");
   Get(Str);
   String_Convert(Str,My_Bool);
   New_Line;
   
   if My_Bool then
      
      Put("ordet  ");
      Put(Str);
      Put(" var troligtvis i plural från början");
   else
      
   
     Put("ordet  ");
      Put(Str);
      Put(" var troligtvis inte i plural från början");
      
      end if;
      New_Line;
      Put("Mata in ett tecken: ");
      Get(Char);
      New_Line;
   
      if Is_True(Char) then
	 Put("Tecknet Var Sant");
      else
	 Put("tecknet var inte sant");
	 
	 end if;
   
   
   
   end  O2;

             
