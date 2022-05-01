-- 5) Write a PL/SQL block which converts temperature 
-- from Celsius to Fahrenheit.

DECLARE
    celsius NUMBER(5,2);
    fahrenheit NUMBER(5,2);

BEGIN
    celsius := 20;
    fahrenheit := (celsius * 9 / 5) + 32;
    dbms_output.put_line('Celsius: ' || celsius || ' Fahrenheit: ' || fahrenheit);

END;
/
