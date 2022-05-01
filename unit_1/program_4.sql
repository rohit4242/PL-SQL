-- 4) Write a PL/SQL block which accepts measurement 
-- in feet and displays it in cm, inch and meter.

DECLARE
    feet number(10,2);
    cm number(10,2);
    inch number(10,2);
    meter number(10,2);
BEGIN
    feet:=&feet;
    cm := feet *30.48;
    inch := feet *12;
    meter := feet *0.3048;
    dbms_output.put_line('Your CM values is: '|| cm);
    dbms_output.put_line('Your inch values is: '|| inch);
    dbms_output.put_line('Your meter values is: '|| meter);
END;
/