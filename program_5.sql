declare
 x number(2) := 3;
  
begin

if mod(x,2)=0 then
 
   dbms_output.put_line('Even value');
 
else
   dbms_output.put_line('Odd value');

end if;

end;

/