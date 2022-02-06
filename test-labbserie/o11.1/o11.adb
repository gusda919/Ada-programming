with Ada.Text_IO;          use Ada.Text_IO;
with Ada.Integer_Text_IO;  use Ada.Integer_Text_IO;
with Ada.Float_text_IO;   use Ada.Float_Text_IO; 
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;
with Ada.Numerics;        use Ada.Numerics;




    procedure O11 is 
   
       
       
       function Calculate_Factorial(N : in integer) return integer is
	  
      	Sum : Integer := 1;
     begin
	
	

      for I in 1..N loop
         Sum := Sum * N;
      end loop;
	
	  
	  
	  return Sum ;
  	  
	  end Calculate_Factorial;
	  
   
       
       
             
       function Calculate_Hypothenuse(A, B : in Integer) return Float is
	  
	  Hypothenuse : Float;
       begin
	  
	  
	  Hypothenuse:= (Float(A) ** 2) + (Float(B) ** 2);
	  Hypothenuse:= Sqrt(Hypothenuse);
	  
	  return Hypothenuse ;
	  
	  end Calculate_Hypothenuse;
	  
  
       
       
       
             
        procedure  Calculate_Angles(Hc,Sa : in Float ; Va,Vb,Vc : out float)  is
	  

       begin
	  
	  

	  Va:= Arcsin(Sa/HC);
	  Va:= Va * (180.00/Pi);	  
	  Vb:= 90.00 -  Va;
	  Vc:= 90.00;

	 
       end Calculate_Angles;
       
       
       
       
       
       
       
       
       procedure Factorial_Program is 
	  
	 N : Integer;
      begin
	 
	 Put("Mata in ditt tal : ");
	 Get(N);
	 Put(" N-fakultet är: ");
	 Put(Calculate_Factorial(N),0);
	  
	  
	  end;
       
       
       procedure  Hypothenuse_Program is 
	  
	  
	  

	A, B : Integer ;  
       begin
	  
	  Put("Mata in kateternas längder: ");
	  Get(A);
	  Get(B);
	  Put("Hypotenusan är ");
	  Put(Calculate_Hypothenuse(A,B),0,2,0);
	  
	  
	  
	  
	  
	  end;
   
   
     procedure Angle_Program is 
	  
	  
	  
	Hc,Sa : Integer;
	Va,Vb,Vc : Float;
	  
      begin
	 Put("Mata in hypotenusans längd: ");
	 Get(Hc);
	 Put("Mata in motstående kateters längd: ");
	 Get(Sa);
	 
	 Calculate_Angles(Float(Hc),Float(Sa),Va,Vb,Vc);
	 
	 Put("Va = ");
	 Put(Integer(Va),0);
	 Put(" grader");
	 New_Line;
	 Put("Vb = ");
	 Put(Integer(Vb),0);
	 Put(" grader");
	 New_Line;
	 Put("Vc = ");
	 Put(Integer(Vc),0);
	 Put(" grader");
	 New_Line;

	 
	  
	  
	  
	  end;
       
       
 
       
       
       
       function Menu_Selection return Integer  is 
	  
	  
	  
	  Choice : Integer;
       begin 
	  
	  Put("=== HUVUDMENY ===");
	  New_Line;
	  loop
	  Put_Line("1. Beräkna hypotenusa");
	  Put_Line("2. Beräkna trianglevinklar");
	  Put_Line("3. Beräkna N-fakultet");
	  Put_Line("4. Avsluta programmet");
	  Put("Val: ");
	  Get(Choice);
	  
	   	  	  
	  if Choice = 1 then
	     
	      Hypothenuse_Program;
	    
	  
	  elsif Choice = 2 then
	     
	     Angle_Program;
	    
	  
	  elsif Choice = 3 then
	     
	     Factorial_Program;
	    
	  
	  elsif Choice = 4 then
	     
	     exit;
  
	  else
	  
	     Put("Felaktigt val! ");
	  
	    
	  end if;
	  New_Line;
	  end loop;
	  
	  
	  
	  end;
   
  
     begin
   
   
	Put("Välkommen till miniräknare!");
	loop
	Menu_Selection;
   
   
   
   
   
   
   end;
