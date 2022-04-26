-- write a pl/sql block that uses a cursor attribute %isopen and %notfound to
-- raise the basic salary of employees of department number 20 by 5% 
-- and also display the apporpriate message based no the existence to the record in the emp table.
-- whenever any such raise is given to the employee, a record for the same is mainttained in the emp_update table.
-- (perform using both implicit and explicit cursors)

declare 

begin

    update customer_rec set salary = salary * 1.1 where dept_no = 10;
    if sql%isopen then 
        dbms_output.put_line('The salary of the employee is increased by 10%');
    elsif sql%notfound then
        dbms_output.put_line('The employee does not exist');
    end if;

end;
/