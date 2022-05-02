-- 3) Write a PL/SQL block that uses a cursor attribute 
-- %ROWCOUNT to display the name, department 
-- and basic salary of first 5 employees getting the 
-- highest basic salary. (Use Explicit Cursor)

declare
    cursor c1 is select * from customer_rec order by salary desc;
    name varchar2(20);
    basic_salary number(10);
    i number(2):=0;
    r_row customer_rec%rowtype;

begin
    open c1;
    loop
        fetch c1 into r_row;
        exit when i = 5;
        i := i + 1;
        name := r_row.name;
        basic_salary := r_row.salary;
        dbms_output.put_line(name || ' ' || basic_salary);
    end loop;

    close c1;
end;
/