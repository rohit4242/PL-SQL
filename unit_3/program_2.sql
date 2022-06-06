-- 2) Write a PL/SQL block to accept student name from 
-- a user if it is exist display his/her result from 
-- RESULT table otherwise display appropriate 
-- message using exception handling.

create table result_1 (
    roll_no number,
    name varchar2(30),
    marks number
);

insert into result_1 values(1,'Rohit',80);
insert into result_1 values(2,'Rohit',90);
insert into result_1 values(3,'Rohit',70);
insert into result_1 values(4,'Rohit',60);
insert into result_1 values(5,'Rohit',50);

declare
    r_no number;
    name varchar2(30);
    marks number;
begin
    r_no:=1;
    select name,marks into name,marks from result_1 where roll_no = r_no;
    if name is null then
        raise_application_error(-20001,'Student not found');
    end if;
    dbms_output.put_line(name||' '||marks);
end;
/