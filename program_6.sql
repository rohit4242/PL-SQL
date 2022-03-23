

declare
 age number(2) := 7;
  
begin

if age>=7 and age<=13 then
 
   dbms_output.put_line('student is primary');
 
else
   dbms_output.put_line('student is not primary');

end if;

end;

/