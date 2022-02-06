package body Sorted_Hero_list is
   
   Procedure Release_memory is new Ada.Unchecked_Deallocation(Element_type, pekare);
   
 
    procedure Insert_First(P : in out Pekare ; hero : in Hero_type) is
   Temp : Pekare;
   
begin
   if (P = null) then
      P:= new Element_Type;
      P.Data:=hero;
      P.Next:=null;
   else
      Temp:= new Element_Type;
      Temp.Data:=hero;
      Temp.Next:=P;
      
      P:=Temp;
   end if;
end Insert_First;


procedure Insert(P : in out Pekare ; hero : in Hero_Type ) is
    
 begin
    
    if (P = null) then
       Insert_First(P,hero);
       
    elsif Get_Age(Hero) <= Get_Age(P.Data) then
       Insert_First(P,hero);
    else
       Insert(P.Next,hero);
    end if;
    end Insert;
    
      function Empty(p : in pekare) return Boolean is
       
       
    begin
       
       if  p = (null)
	 Then
	 return true;
         else
	 
	 return false;
	 end if;
	 end Empty;
	 
	 
	 procedure Put_list(Lista : in  pekare ) is
	    
	    
	  
	 begin
	    
	  if Lista = null then
	       return;
	       end if;
	    if Lista.Next= null then
	       Put_hero(Lista.Data);
	    
	       else
	       
		  Put_hero(lista.Data);
		  
	    Put_List(Lista.Next);
	  
             end if;
	       
	 
	 end Put_list;
	 
	 
    function Member(p : in Pekare ; nyckel : in Integer) return Boolean is
	    
	    Temp: Pekare:=P;
	    Found_variable: Boolean;
	    
	 begin
            
	    if not Empty(Temp) then	       
	     if  Get_Age(P.Data) = Nyckel then
		return true;
	
	       end if;
	      Found_variable:=Member(P.next,Nyckel);
	    end  if;
	   
	    return Found_Variable;
	    
	    
	    end Member;
	    
	    
	       procedure Remove (P : in out Pekare; Nyckel : in Integer) is
	       
	    
	     Temp : Pekare;  
	    begin
	  
	       if Empty(P) = true then 
		  raise Wrong_Input;
	       end if;
	       if Empty(P) = false  then
		  if Get_Age(P.Data) = nyckel then 
		     Temp:=P;
		     P:=temp.Next;
		     Release_Memory(temp);
		     return;
		  end if;
		  
		  Remove(P.Next, Nyckel);
	       end if;
	       	       	       	       	       	       	       	       
	    end Remove;
	    
	      procedure Delete(P : in out Pekare) is
	       
	       Temp : Pekare:=null;
	       
	    begin
	  
	       if P = null then 
		  return;
	       end if;
		  if Empty(P) then
		     raise Wrong_Input;
		     end if;
		    if not Empty(P) then
		       Temp:=P.Next;
		       Release_Memory(Temp);
		       P:=Temp;
		       
		       Delete(P);
		       
		    end if;
		    
		    Release_Memory(P);
	    end Delete;
	    
	    
	    
	    
	      function Find(P : in out Pekare ; nyckel : in out Integer) return Integer is
	       
	       No_Value: Boolean;
	       Found_Variable: Integer;
	       
	    begin
	        No_Value:=Empty(P);
	       if No_Value then 
		  raise Wrong_Input;
	       end if;
	       if not No_Value then
		  if Get_Age(P.Data) = Nyckel then
		     return Get_Age(P.Data);
		  end if;
		  Found_Variable:=Find(p.next,nyckel);
	       end if;
	       return Found_Variable;
	       
	    end Find;
	    
	   
	    	    procedure Find(P : in Pekare; Nyckel: in Integer; Found_It : out Integer) is
	       
	       Index_post : Pekare;
	       index : Integer;
	    begin
	       
	       Index_post:=P;
	       index:=Nyckel;
	       
	       
	       Found_It:=Find(Index_post,index);
	     
	       
	    end Find;
	    
	    
	    
	       function Length( p : in Pekare) return Integer is
		  
		 No_value: Boolean;
		 Index: Integer:=0;
		  
	       begin
		  No_Value:=Empty(P);
		  if not No_Value then
		     Index:=Length(P.Next);
		     Index:=Index+1;
		     
		  end if;
		  return Index;
		  
	       end Length;
	       
	       
	       end Sorted_Hero_List;
