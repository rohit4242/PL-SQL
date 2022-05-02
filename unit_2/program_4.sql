-- 4) Write a PL/SQL block using a cursor FOR loop to 
-- display name and the basic salary of top 3 highest 
-- paid employees. (Use Cursor For Loop)

declare
    cursor c1 is select * from customer_rec order by salary desc;
    i number(2):= 0;
    r_row customer_rec%rowtype;

begin
    open c1;
    loop
        fetch c1 into r_row;
        exit when c1%rowcount = 6;
       
        dbms_output.put_line( r_row.id || ' ' ||r_row.name || ' ' || r_row.salary);

    end loop;
        dbms_output.put_line('Rowcount: ' || c1%rowcount);
        
    close c1;
end;
/