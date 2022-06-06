-- 4) Write a function that returns the square of the
-- given number. Execute the function using separate
-- PL/SQL block and on the command line.


create or replace function square(num in number)
return number is
begin
return num * num;
end;
/

declare 
num number;
begin

num:=5;
dbms_output.put_line(square(num));

end;
/