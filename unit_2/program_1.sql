-- 1) Write a PL/SQL block that uses a cursor attribute 
-- SQL%ROWCOUNT to raise the basic salary of 
-- employees by 10% that are working in department 
-- number 10 and also display the appropriate 
-- message based on the existence to the record in 
-- the EMP table. (Use Implicit Cursor)

declare
    cursor c_emp is select * from emp10 where deptno = 2;
    r_emp emp10%rowtype;

begin

    for r_emp in c_emp
    loop

        if r_emp.basicsal > 0 then
            update emp10 set basicsal = r_emp.basicsal * 1.1;
            dbms_output.put_line('Updated');
        else

            dbms_output.put_line('Not Updated');
        end if;

    end loop;

    dbms_output.put_line('Done');

end;
/

