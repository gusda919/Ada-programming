with Ada.Text_IO;          use Ada.Text_IO;
with Ada.Integer_Text_IO;  use Ada.Integer_Text_IO;
with Ada.Float_text_IO;   use Ada.Float_Text_IO; 
with Ada.Numerics.Discrete_Random; 
with Ada.Numerics.Float_Random ;  use Ada.Numerics.Float_Random;



    procedure O12 is 
       
        
     procedure Random_Dice(Number_Of_Dice : in Integer ; Sum : in out Integer) is
   subtype Die is Integer range 1 .. 6;
   package Random_Die is new Ada.Numerics.Discrete_Random (Die);
   use Random_Die;
   G : Random_Die.Generator;
   D : Die;

begin
   Reset (G);  -- Start the generator in a unique state in each run
   for I in 1..Number_Of_dice loop
      -- Roll a pair of dice; sum and process the results
      D := Random(G);
      Sum:= Sum + D;
      
   end loop;
   
end Random_dice;  

   function Random_Float return Float is
      subtype Die is float range 0.00 .. 100.00;
 
   G : Generator;
   D : Die;
   Magic_Float : Float ;

begin
   Reset (G);  -- Start the generator in a unique state in each run
  
      -- Roll a pair of dice; sum and process the results
   D := Random(G);
   Magic_Float:= 100.00 * D;
      
   
   return Magic_Float;
   
end Random_float;  



procedure Random_String  is
   
   
   function Char_Intervall return Character is
      
            subtype Die is character range 'a' .. 'z';
       package Random_Die is new Ada.Numerics.Discrete_Random (Die);
   use Random_Die;
 
   G : Random_Die.Generator;
   D : Die;
   Char : Character;
      
      
   begin
      Reset (G);
      D:= Random(G);
      Put(D);
     

      Char:=D;
      
      return Char;
      
      end Char_Intervall;
   
   
   
      subtype Die is character range Char_Intervall .. Char_Intervall;
       package Random_Die is new Ada.Numerics.Discrete_Random (Die);
   use Random_Die;
 
   G : Random_Die.Generator;
   D : Die;
   Temp: Die;
   
  

begin
   Reset (G);  -- Start the generator in a unique state in each run
   New_Line;
   for I in Die'Range loop
      
  
      temp := Random(G);
      
      
      if Temp /= D  then
	
	 
	 D:=Temp;
	 Put(D);
	 
	 end if;

   end loop;
   
   
   
end Random_string;  






       
      Number_Of_Dice : Integer:=0;
      Sum : Integer:=0;
  
    begin
       
       Put_line("DEL 1: ");
       Put("Mata in antal 6-sidiga t??rningar: ");
       Get(Number_Of_Dice);
       Random_Dice(Number_Of_Dice,Sum);
       New_Line;
       Put("Summa: ");
       Put(Sum,0);
       New_Line;
       Put("Nu Slumpas Ett Tal Mellan 0.0 och 100.0. ");
       New_Line;
       Put("Slumpat Flyttal: ");
       Put(Random_Float,0,1,0);
       
       Put_line("-------");
       Put_line(" Del 2");
       Random_String;
       
       
       
   
   
   
   
   
   end o12;
