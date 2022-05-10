--value error: 

declare 
    temp number;

begin
    select g_name into temp from mytable where g_name = 'one';
    dbms_output.put_line('the sir name is: '|| temp);

exception
    when value_error then
        dbms_output.put_line('Error: value error');
        dbms_output.put_line('Change data type of temp to varchar2(20)');

end;
/