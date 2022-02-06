with Ada.Integer_Text_IO, Ada.Text_IO, Ada.Float_Text_IO;
use Ada.Integer_Text_IO, Ada.Text_IO, Ada.Float_Text_IO;


package body Burger_Handling is
   
   
   procedure Get(burger : out burger_Type) is
      
      S: String(1..8);
      Price : Float;
      Code : Integer;
   begin
      Put("Mata in klockslag: ");
      Get(S);
      Burger.Time:=S;
      Put("Mata in pris: ");
      Get(Price);
      Burger.Price:=Price;
      Put("Mata in sifferkod: ");
      Get(Code);
      Burger.Code:=Code;
    
      
   end Get;
   
   
   procedure Put(burger : in burger_Type) is
      
   begin
      
      
      Put(Burger.Time);
      New_Line;
      Put(Burger.Price,2,2,0);
      New_Line;  
      Put(Burger.Code,2);
      New_Line;
      if Is_Breakfast_Burger(Burger) then
	 Put("Frukostburgare");
    
      end if;
      
   end Put;
   
   function Is_Breakfast_burger(burger : in burger_Type) return boolean is
      
   begin
      
      if Integer'Value(burger.Time(1..2)) < 10 and Integer'Value(burger.Time(1..2)) > 0 then
      
      return true;
      else 
	 return false;
      end if;
      
      
   end Is_Breakfast_Burger;
   
end burger_Handling;
