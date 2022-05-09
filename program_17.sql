-- write a pl/sql block using a parameterized cursor that displays the department wise basic salary of each employee and 
-- department wise total gross salary.

declare
    cursor c_emp(dno number) is select * from emp10 where deptno = dno;
    r_emp emp10%rowtype;
    total number(6):= 0;

begin

    for r_emp in c_emp(2)
    loop
        total := total + r_emp.basicsal;
        dbms_output.put_line(r_emp.ename || ' ' || r_emp.basicsal);
    end loop;

    dbms_output.put_line('Total: ' || total);

end;
/

