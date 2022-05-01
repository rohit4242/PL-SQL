-- 2) Write a PL/SQL block to calculate the square and 
-- cube of the given number.

DECLARE
    number NUMBER := 5;
    square NUMBER;
    cube   NUMBER;
BEGIN
    square := number * number;
    cube   := number * number * number;
    dbms_output.put_line('The square is ' || square);
    dbms_output.put_line('The cube is ' || cube);
END;
/