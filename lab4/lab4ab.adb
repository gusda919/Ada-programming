with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


procedure  Lab4ab is
 type  Month_Value : constant array(0..12) of Integer:=(31,31,28,31,30,31,30,31,31,30,31,30,31);
   
   type Datum_Type is 
      record
	 Year: integer;
	 Month: integer;
	 Day: integer;
      end record;
   
   procedure Get(Datum: out Datum_Type) is
      
      Str: String (1..10);
      
      
      
      begin
   
	 Get(Str);
	
	 Datum.Year:=Integer'value(Str(1..4));
    
       Datum. Month:=Integer'Value(Str(6..7));

	Datum.Day:=Integer'Value(Str(9..10));							     
      end Get;
   
   
      procedure Put(Datum: in Datum_Type) is
	 
	 
      begin
	 
	 Put(Datum.Year,Width=>0);
	 Put("-");
	  if Datum.Month < 10 then
	   Put(0,Width=>0);
	   
	   end if;

	 
	 Put(Datum.Month,Width=>0);
	 Put("-");
	
	 if Datum.Day < 10 then
	   Put(0,Width=>0);
	   
	   end if;
	 Put(Datum.Day,Width=>0);
	 
	 
	 end Put;
   
   
	 function Next_Date( next  : in Datum_Type) return Datum_Type is
	    
	  Nexta: Datum_Type;
	 begin
	    Nexta:=Next;
	    
	    Nexta.Day:=Nexta.Day+1;
	    
	    if Nexta.Day > Month_Value(Nexta.Month) then
	       Nexta.Month:=Nexta.Month +1;
	       Nexta.Day:=1;
	    end if;
	    
	    if Nexta.Month > 12 then
	       
	       Nexta.Year:=Nexta.Year +1;
	       Nexta.Month:=1;
	       
	       
	    end if;
	    
	    
            return Nexta;
	    
	 end Next_Date;
	 
      	 function Previous_date( next  : in Datum_Type) return Datum_Type is
	    
	  Nexta: Datum_Type;
	 begin
	    Nexta:=Next;
	    
	    Nexta.Day:=Nexta.Day-1;
	    
	    if Nexta.Day < 1 then
	       Nexta.Month:=Nexta.Month -1;
	       Nexta.Day:=Month_Value(Nexta.Month);
    
	  end if; 
	    
	    if   Nexta.Month = 0 then
	       
	       Nexta.Year:=Nexta.Year -1;
	       Nexta.Month:=Month_Value'last;
	       
	       
	    end if;
	    
	    
            return Nexta;
	    
	    end Previous_date;
            
            
	    Datum : Datum_Type;
	    
begin
   
   
   Get(Datum);
   Put(Datum);
   New_Line;
   Put(Next_Date(Datum));
   New_Line;
   Put(Previous_Date(Datum));
   
   Get_Date(Year,Month,Day,Name);
   
   
   
   end lab4ab;
