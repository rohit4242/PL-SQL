-- 4) Write a PL/SQL block using a cursor FOR loop to 
-- display name and the basic salary of top 3 highest 
-- paid employees. (Use Cursor For Loop)


declare
    cursor c1 is select * from customer_rec order by salary desc;
    r_row customer_rec%rowtype;
    num number(2):=0;
    row_count number(2):=0;

begin
    open c1;
    loop
        num:=&num;
        row_count := c1%rowcount;
        fetch c1 into r_row;
        exit when row_count = num;
       
        dbms_output.put_line( r_row.id || ' ' ||r_row.name || ' ' || r_row.salary);
    
    end loop;  
    
    dbms_output.put_line('Rowcount: ' || row_count);
    close c1;
end;
/