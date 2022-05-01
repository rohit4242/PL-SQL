-- 1) Write a PL/SQL block that calculates the simple 
-- interest based on given principal amount, rate of 
-- interest and number of years.

DECLARE
    principal NUMBER := 20000;
    rate      NUMBER := 5;
    years     NUMBER := 2;
    interest  NUMBER;
BEGIN
    interest := principal * rate / 100 * years;
    dbms_output.put_line('The interest is ' || interest);
END;
/


