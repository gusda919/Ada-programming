with Ada.Integer_Text_IO, Ada.Text_IO, Ada.Float_Text_IO, String_handling;
use Ada.Integer_Text_IO, Ada.Text_IO, Ada.Float_Text_IO, String_handling;


package body Hero_Handling is
   
   
   procedure Get_hero(hero : out Hero_Type) is
      
      
   begin
      
      Put("Mata in hjältens namn: ");
      Get(Hero.Name);
     
      Put("Mata in hjältens ålder: ");
      Get(Hero.Age);
      
      Put("Mata in hjältens kön: ");
      Get(Hero.Gender);
      
      Put("Mata in din hjältes vikt (KG): ");
      Get(Hero.Weight);
      
      Put("Mata in hjältens hårfärg: ");
      Get(Hero.Haircolor);
      
   end Get_hero;
   
   
   procedure Put_hero (hero : in Hero_Type) is
      
   begin
      Put("Din hjäte: ");
      New_Line;
      New_Line;
      
      Put("Din hjälte heter: ");
      Put(Hero.Name);
      
      New_Line;
      
      Put("Din hjälte har åldern: ");
      Put(Hero.Age,0);
      
      New_Line;
      
      Put("Din hjältes kön: ");
      Put(Hero.Gender);
      
      New_Line;
      
      Put("Din hjältes vikt: ");
      Put((Hero.Weight),Fore=>0,Aft=>2,Exp=>0);
      
      New_Line;
      
      Put("Din hjälte har hårfärgen: ");
      Put(hero.Haircolor);
      New_Line;
      New_Line;
      
   end Put_hero;
   
   function Get_Age(hero : in Hero_Type) return Integer is
      
   begin
      
      return Hero.Age;
      
   end Get_Age;
   
end Hero_Handling;
