
-- 3) Write a procedure that search’s whether the given
-- employee id is present or not in the table. If
-- employee is found then show its name otherwise
-- raise appropriate error message (Use both IN andOUT mode variables) 
-- and also write a PL/SQL block to call the procedure.

create or replace procedure search_emp(emp_id in number,name out varchar2)
is
begin
select name into name from employee where empno = emp_id;
end;
/

exec search_emp(1,name);

