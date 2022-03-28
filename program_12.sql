DECLARE
    n number(2):= 10;
BEGIN
    for n in 1..10 loop
        dbms_output.put_line(n);
    end loop;
END;
/