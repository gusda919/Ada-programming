with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Sorted_Hero_List; use Sorted_Hero_List;
with Hero_Handling; use Hero_Handling;
with String_handling; use String_handling;
procedure Sorted_Hero_list_Main is
   
   
   
    
      Hero1,hero2 : Hero_Type;
      Pointer : Pekare;
begin
   
   
   
   Get_hero(Hero1);
   Get_Hero(Hero2);
   Insert(Pointer,Hero1);
   Insert(Pointer,Hero2);
   Put_List(Pointer);
   Remove(Pointer, 2);
   Put_List(Pointer);
   Delete(Pointer);
   Put(Length(Pointer));
   
   end Sorted_Hero_list_main;
