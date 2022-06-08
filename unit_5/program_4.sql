-- 4) Write a trigger to insert the existing values of the 
-- EMP table into NEWEMP table when the record is 
-- updated in EMP table.

create or replace trigger trg_insert_newemp
before insert or update on EMP
for each row
begin
  insert into NEWEMP (EMPNO, ENAME) values (:EMPNO, :ENAME);

    if (:EMPNO = :NEW_EMPNO) then
        insert into NEWEMP (EMPNO, ENAME) values (:NEW_EMPNO, :NEW_ENAME);
    end if;

end;
/