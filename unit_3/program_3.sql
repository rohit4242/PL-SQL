-- 3) Write a PL/SQL block to accept employee name 
-- from a user if it is exist display his/her basic salary 
-- otherwise display appropriate message using 
-- exception handling.

declare
    emp_id number;
    name varchar2(30);
    basic_salary number;
begin
    emp_id:=1;
    select name,salary into name,basic_salary from employee where empno = emp_id;
    if name is null then
        raise_application_error(-20001,'Employee not found');
    end if;
    dbms_output.put_line(name||' '||basic_salary);
end;
/