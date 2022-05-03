-- 9) Write a PL/SQL block which displays all records of 
-- Male employees working in HR Dept from EMP 
-- table.

declare
    cursor c1 is select * from emp10 where G='m';

begin
    for i in c1
    loop 
        dbms_output.put_line(i.eid||' '||i.name);
    end loop;
end;
/