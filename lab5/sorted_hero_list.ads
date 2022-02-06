
with Ada.Unchecked_Deallocation;
with Hero_Handling; use Hero_Handling;




package Sorted_Hero_list is
   
   
   type Pekare is private;
   
   
   Wrong_Input: exception;
   
   function Empty(p : in Pekare) return Boolean;
   function Member(p : in Pekare; Nyckel : In Integer) return boolean;
   function Find(p : in out Pekare ; Nyckel : in out Integer) return Integer;
   function Length( p : in Pekare) return Integer;
   
   procedure Insert_First( P : in out Pekare ; hero : in Hero_type);
   procedure Insert(P : in out Pekare ; hero : in Hero_type);
   procedure Remove( P : in out Pekare; Nyckel : in Integer);
   procedure Delete(P : in out Pekare);
   procedure Put_List(lista : in Pekare);
   procedure Find(P : in Pekare; Nyckel: in Integer ; Found_It : out integer);
private
   
   type Element_Type;
   type Pekare is access Element_Type;
 
   type Element_Type is record
      
      Data: Hero_Type;
      Next: Pekare;
   end record;
   
   
   end Sorted_Hero_list;
