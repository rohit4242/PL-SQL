-- write a pl/sql block that uses a cursor attribute sql%rowcount to raise the basic salary of employees by 10% that are working in department number 10 and also display the apporpriate message based on the existence to the record in the emp table (use implicit cursor).

declare 
 
begin
    update customer_rec set salary = salary +(salary * (0.1)) where dept_no = 10;
    if sql%found then
       
        dbms_output.put_line('The salary of the employee is increased by 10%');
    elsif sql%notfound then
        dbms_output.put_line('The employee does not exist');
     update customer_rec set salary = salary +(salary * (0.1)) where dept_no = 10;
    end if;
end;
/

