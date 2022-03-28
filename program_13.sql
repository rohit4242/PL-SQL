DECLARE 

    n number(2):= 10;

BEGIN

    while n < 20 loop
        dbms_output.put_line(n);
        n := n + 1;
    end loop;
    dbms_output.put_line('Done');

END;
/