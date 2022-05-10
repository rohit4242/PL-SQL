--Write pl/sql block that explains the zero_divide exception.

declare
    temp number(6):=10;

begin 
    temp := temp / 0;
    dbms_output.put_line('the number is: '|| temp);

    exception
        when zero_divide then
            dbms_output.put_line('Error: zero divide');
end;
/