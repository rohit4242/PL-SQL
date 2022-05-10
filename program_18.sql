create table mytable(
    g_id number(5) primary key,
    g_name varchar2(20)
);

insert into mytable values(1, 'one');
insert into mytable values(2, 'two');

declare
    temp varchar2(20);
    
begin
    select g_id into temp from mytable where g_name = 'marwadi';

exception when no_data_found then

    dbms_output.put_line('ERROR');
    dbms_output.put_line(' there is no name as');
    dbms_output.put_line('Marwadi in mytable table');

end;
/

