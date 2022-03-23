

declare
 day number(2) := 0;
  
begin

if day>=1 and day<=7 then
 
   if day=1 then
	   dbms_output.put_line('Monday');

   elsif day=2 then 
	   dbms_output.put_line('Tuesday');

   elsif day=3 then 
	   dbms_output.put_line('wednesday');

   elsif day=4 then 
	   dbms_output.put_line('Thursday');

   elsif day=5 then 
	   dbms_output.put_line('Friday');

   elsif day=6 then 
	   dbms_output.put_line('Saturday');

   elsif day=7 then 
	   dbms_output.put_line('Sunday');

   end if;
 
 
else
   dbms_output.put_line('Enter The Only 1 To 7 Numbers');

end if;

end;

/