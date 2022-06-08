-- 3) Write a trigger to insert the values into the 
-- NEWEMP table when the records are inserted into 
-- the EMP table.

create or replace trigger NEWEMP_INSERT_TRIGGER
before insert on EMP
for each row
begin
  insert into NEWEMP (EMPNO, ENAME) values (:new.EMPNO, :new.ENAME);
  dbms_output.put_line('Inserted into NEWEMP');

end;
/