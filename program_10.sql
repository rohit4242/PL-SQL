DECLARE
    n number := 10;
BEGIN

    loop
        dbms_output.put_line(n);
        n := n + 10;
        if n > 100 then
            exit;
        end if;

    end loop;

end;
/