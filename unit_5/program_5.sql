-- 5) Write a trigger to insert the existing values of the 
-- EMP table into NEWEMP table when the record is 
-- deleted from EMP table

create or replace trigger trg_insert_newemp
before delete on EMP
for each row
begin
  insert into NEWEMP values(old.EMPNO, old.ENAME);
  
end;
