-- 6) Write a program to generate the numbers using 
-- LOOP, FOR LOOP and WHILE LOOP up to the 
-- number inputted by user.

DECLARE
    num number;
    i number;
BEGIN
    num:=&num;
    i:=1;
    dbms_output.put_line('LOOP: ');
    loop
        dbms_output.put_line(i);
        i:=i+1;
        if i > num then
            exit loop;
        end if;
    end loop;
    dbms_output.put_line('FOR LOOP: ');
    for i in num downTo 1 loop
        dbms_output.put_line(i);
    end loop;
    dbms_output.put_line('WHILE LOOP: ');
    i:=num;
    while i >= 1 loop
        dbms_output.put_line(i);
        i:=i-1;
    end loop;
END;
/