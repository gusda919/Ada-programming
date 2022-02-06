package String_Handling is
   
   type String_Type is private;
 
   
   procedure Get(Input: out String_Type);
   procedure Put(Output : in String_Type);
   
   
private
    type Char_Type is array(1..256) of Character;
   type String_Type is 
      record
	 Char_Array : Char_Type;
	 Length : Integer:=0;
      end record;
   
  
   
   
end String_Handling;
