DECLARE
    n number(2):= 10;

BEGIN
    for n in reverse 10..20 loop

        if mod(n,2)=0 then 
            continue;
        end if;
        dbms_output.put_line(n);
    end loop;
END;
/