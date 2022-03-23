declare
 gender varchar2(10) := 'male';
  
begin

if gender='female' then
 
   dbms_output.put_line('is female');
 
else
   dbms_output.put_line('is male');

end if;

end;

/