declare
 perc number(2) := 71;
  
begin

 if (perc>70) then
 
   dbms_output.put_line('distinction'||perc);
 
else
   dbms_output.put_line(' Not distinction'||perc);

end if;

end;

/