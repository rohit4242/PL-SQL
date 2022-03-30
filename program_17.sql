-- write a pl/sql block which accepts measurement in feet and display it in cm.


declare
    feet number(10,2);
    cm number(10,2);

begin

    feet:=&feet;

    cm := feet *30.48;

    dbms_output.put_line('Your CM values is: '|| cm);

end;
/




