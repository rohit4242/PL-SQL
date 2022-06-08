-- 2) Write a trigger that restricts the entry of record in 
-- EMP table if salary is greater than Rs 50000.

create or replace trigger emp_salary_trigger
before insert on emp
for each row
when (new.salary > 50000)
begin
    dbms_output.put_line('Salary is greater than 50000');
end;
/