-- 1) Write a trigger to restrict user form accessing the 
-- table on weekends.

create or replace trigger weekend_restriction
before insert or update on public.employee
for each row
begin
  if (new.day_of_week = 'Saturday' or new.day_of_week = 'Sunday') then
    dbms_output.put_line('Employee cannot be added on weekends');
  end if;
end;

