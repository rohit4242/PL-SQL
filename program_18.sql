-- write a pl/sql block which accepts measurement in feet and display it in inches.


declare
    feet number(10,2);
    inches number(10,2);

begin

    feet:=&feet;

    inches := feet *12;

    dbms_output.put_line('Your inches values is: '|| inches);

end;
/




