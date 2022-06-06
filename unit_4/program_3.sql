
-- 3) Write a procedure that search’s whether the given
-- employee id is present or not in the table. If
-- employee is found then show its name otherwise
-- raise appropriate error message (Use both IN andOUT mode variables) 
-- and also write a PL/SQL block to call the procedure.

create or replace procedure search_emp(emp_id in number,name out varchar2)
is
begin
    select name into name from employee where empno = emp_id;
    if name is null then
        raise_application_error(-20001,'Employee not found');
    end if;
end;
/

declare
emp_id number;
name varchar2(30);
begin

    emp_id:=1;
    search_emp(emp_id,name);
    dbms_output.put_line('Employee name is: '||name);

end;
/

