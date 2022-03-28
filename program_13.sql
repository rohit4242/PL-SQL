DECLARE 

    n number(2):= 10;

BEGIN

    while n < 20 loop
        n := n + 1;

        if n=13 then 
            continue;
        end if;

        dbms_output.put_line(n);
        
    end loop;
END;
/