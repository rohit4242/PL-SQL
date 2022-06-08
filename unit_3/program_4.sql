-- 4) Write a PL/SQL block to display the salary of that 
-- employee whose age is 50 year otherwise display
-- appropriate message using exception handling.

declare
    emp_id number;
    age number;
    salary number;
    age_is_50 exception;

begin
    select emp_id, age, salary into emp_id, age, salary from employees
    where age = 50;
    if age_is_50 is null then
        raise age_is_50;
    end if;
exception
    when age_is_50 then
        dbms_output.put_line('Age is not 50');
    end;
    dbms_output.put_line('Salary of employee with age 50 is ' || salary);
end;
/

