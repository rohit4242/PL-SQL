
declare

 day number(2) := 1;
  
begin

case day
 
    when 1 then
	    dbms_output.put_line('Monday');

    when 2 then 
	    dbms_output.put_line('Tuesday');

    when 3 then 
	    dbms_output.put_line('wednesday');

    when 4 then 
	    dbms_output.put_line('Thursday');

    when 5 then 
	    dbms_output.put_line('Friday');

    when 6 then 
	    dbms_output.put_line('Saturday');

    when 7 then 
	    dbms_output.put_line('Sunday');
 
    else
        dbms_output.put_line('Enter The Only 1 To 7 Numbers');

end case;

end;

/