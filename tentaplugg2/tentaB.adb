with Ada.Text_IO;		use Ada.Text_IO;
with Ada.Integer_Text_IO;	use Ada.Integer_Text_IO;

procedure Tentab is
   
 subtype Index_Type is Integer range 1 .. 9;
 type Sudoku_Type is array(1..9) of Index_Type;

  
  -----------------------------------------------------------------------------
  -- Put: Skriver ut Sudoku-"brÃ¤det"
  ----------------------------------------------------------------------------
   
 procedure Put_board(Board : in  Sudoku_Type ) is
    
    
    
    ------------------------------------------------------------
    procedure Draw_Line(Ch1, Ch2 : in Character) is
      
    begin
      Put(Ch1);
      for I in 1 .. 3 loop
	for I in 1 .. 3 loop
	  Put(Ch2);
	end loop;
	Put(Ch1);
      end loop;
      New_Line;
    end Draw_Line;
    
    ------------------------------------------------------------
    
  begin
    Draw_Line('+', '-');
    for Y in Index_Type loop
      Put('|');
      for X in Index_Type loop
	 --	Put(Get_Value(Board, X, Y));
	 Put('a');
	if X mod 3 = 0 then
	  Put('|');
	end if;
      end loop;
      New_Line;
      
      if Y mod 3 = 0 then
	Draw_Line('+', '-');
      end if;
    end loop;
  end Put_board;
  
  procedure Insert (Board : in  Sudoku_Type ;  X,Y : in integer) is
     
     
     
     
  begin 
     
     
     for Y in Board'range loop
	
      for X in Index_Type loop
	 --	Put(Get_Value(Board, X, Y));
	 Put('a');
	if X mod 3 = 0 then
	  Put('|');
	end if;
      end loop;
      New_Line;
     end loop;
     end Insert;
  
  -----------------------------------------------------------------------------
  -- Character_To_Integer: A => 1, B => 2, ..., I => 9
  -----------------------------------------------------------------------------
  function Character_To_Integer(Ch : in Character) return Integer is
    
  begin
    return Character'Pos(Ch) - Character'Pos('A') + 1;
  end Character_To_Integer;

  -----------------------------------------------------------------------------
  index, I : Integer;
  Ch : Character;
  Board :Sudoku_Type;
begin
   
   Put("Mata in startposition (ex: B1): ");
   New_Line;
   Get(Ch);
   Get(index);
   I := Character_To_Integer(Ch);
   Insert(Board,I,Index);
   Put_board(Board);
  
   

  Put_Line("Det gick inte att hitta en lÃ¶sning!");
  
  
end  Tentab;
