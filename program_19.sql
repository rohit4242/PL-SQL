
declare
    temp varchar2(20);
    
begin
    select g_name into temp from mytable;
    dbms_output.put_line(temp);

exception when too_many_rows then

    dbms_output.put_line('error trying to select too many rows');

end;
/

