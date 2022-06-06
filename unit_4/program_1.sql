-- 1) Write a simple procedure without any parameter
-- that shows user defined message on the screen.
-- Call the procedure using separate PL/SQL block
-- and on the command line.

create  or replace  procedure hello_msg
is
begin
dbms_output.put_line('Hello Rohit!');
end;
/

exec hello_msg;