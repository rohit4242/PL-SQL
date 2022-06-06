-- 2) Write a simple procedure that increases the basic
-- salary of employees for the given department no
-- by percentage inputted by the user using IN
-- parameter.

create or replace procedure increase_salary(percentage in number,dept_no in number)
is

begin
    update employee set salary = salary * (1 + percentage/100)
    where empno = dept_no;
end;
/

exec increase_salary(10,2);