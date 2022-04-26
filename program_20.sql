-- write a pl/sql block that uses a cursor attribute sql%rowcount to raise the basic salary of employees by 10% that are working in department number 10 and also display the apporpriate message based on the existence to the record in the emp table (use implicit cursor).

declare 
begin

    update customer_rec set salary = salary * 1.1 where dept_no = 10;
    if sql%found then
        dbms_output.put_line('The salary of the employee is increased by 10%');
    else
        dbms_output.put_line('The employee does not exist');
    end if;
end;
/

