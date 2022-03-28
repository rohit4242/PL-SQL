DECLARE 
    n number := 10;
BEGIN
    loop
        dbms_output.put_line(n);
        n := n + 10;
        exit when n > 100;
    end loop;
end;
/