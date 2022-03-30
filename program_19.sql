-- write a pl/sql block which accepts measurement in feet and display it in meter.


declare
    feet number(10,2);
    meter number(10,4);

begin

    feet:=&feet;

    meter := (feet)/3.2808;

    dbms_output.put_line('Your meter values is: '|| meter);

end;
/




