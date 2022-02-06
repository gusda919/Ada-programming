with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO;		use Ada.Integer_Text_IO;
with Ada.Numerics.Discrete_Random;




     procedure Make_Pwd is
   
   
function Die_Roll(Integer_Range : in Integer) return Integer  is
   
   subtype One_To_Six is Integer range 1..Integer_range;
   package My_Random is new Ada.Numerics.Discrete_Random(One_To_Six);
   use My_Random;
   G : Generator;
   
   
   
begin
   
   Reset(G);
  -- Put(Random(G), Width => 0);
   
   
   return Random(G);
   
end Die_Roll;





procedure Lower_case (String_range,Numbers : in out Integer ; String_Type : in String) is
   
   Lower : String(1..26);
   
begin
    Lower:=String_Type;

   
   if(String_Range > 0 ) then
      
      Put(Lower(Die_Roll(26)));
      
      String_Range:= String_Range -1;
      Lower_Case(String_Range,Numbers,String_Type);
   end if;
   
   if(String_Range <= 0 and Numbers > 0 ) then
     
      Put(Die_Roll(9),0);
      Numbers:=Numbers-1;
      Lower_Case(String_Range,Numbers,String_Type);
      end if;
   
   
   
   
   end Lower_case;

   
   procedure Mixed_case (String_range,Numbers : in out Integer ; Upper , lower : in String ) is
   
      Upper_cases : String(1..26);
      Lower_Cases : String(1..26);
     
begin
   Upper_cases:=upper;
   Lower_Cases:=Lower;

   
   if(String_Range > 0 ) then
      
      if(Die_Roll(2) = 2) then
      Put(upper(Die_Roll(26)));
      end if;
      
      if(Die_Roll(2) = 1) then
      Put(lower(Die_Roll(26)));
      
      end if;
      String_Range:= String_Range -1;
      mixed_Case(String_Range,Numbers,Upper,lower);
   end if;
   
   if(String_Range <= 0 and Numbers > 0 ) then
     
      Put(Die_Roll(9),0);
      Numbers:=Numbers-1;
      mixed_Case(String_Range,Numbers,Upper,lower);
      end if;
   
   
   
   end Mixed_case;
   
   
   
procedure Upper_case (String_range,Numbers : in out Integer ; String_Type : in String) is
   
  upper : String(1..26);
   
begin
    upper:=String_Type;

   
   if(String_Range > 0 ) then
      
      Put(upper(Die_Roll(26)));
      
      String_Range:= String_Range -1;
      upper_Case(String_Range,Numbers,String_Type);
   end if;
   
   if(String_Range <= 0 and Numbers > 0 ) then
     
      Put(Die_Roll(9),0);
      Numbers:=Numbers-1;
      upper_Case(String_Range,Numbers,String_Type);
      end if;
   
   
   
   
   end upper_case;

   

   
   
     Lower : String(1..26):=('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z');
     Upper : String(1..26):=('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
     
     
     String_Type : String(1..9);
     String_Range : Integer;
     Numbers : Integer;
   
begin
   
   
   Get(String_Range);
   Get(String_Type(3..7));
   Get(Numbers);
       
       
       if (String_Type(3..7) = "lower") then
   
      Lower_case(String_Range,Numbers,Lower);
       
      end if;
   
      
       if (String_Type(3..7) = "upper") then
   
      upper_case(String_Range,Numbers,Upper);
       
      end if;
      
      
      if (String_Type(3..7) = "mixed") then
   
      mixed_case(String_Range,Numbers,Upper,Lower);
       
      end if;
   
      
   
   
   end Make_Pwd;
