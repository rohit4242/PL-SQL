-- 10) Write a PL/SQL block to delete the record of 
-- employee for given EID.

declare
    eid number;
begin
    
    select eid into eid from employee;
    delete from employee where eid = eid;

end;
/

