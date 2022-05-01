-- 8) Write a PL/SQL block which displays gross salary of 
-- employees as per user input EID. (Consider EMP
-- table with EID, EName, Deptno, Deptname Gender,
-- Age, BasicSal) with appropriate data types.)
-- Gross_Salary: BASICSAL + (DA + HRA + Medical) 
-- – PF.
-- Rules: HRA = 15% of basic, DA = 50% of basic, 
-- Medical = Rs. 500, PF = 10% of basic.

DECLARE
    basic_salary emp10.basicsal%type;
    employee_id emp10.eid%type:=1;
    employee_name emp10.ename%type;

    DA number(8,2):=0;
    HRA number(8,2):=0;
    MADICAL number(8,2):=0;
    PF number(8,2):=0;

    gross_salary number(8,2):=0;

BEGIN
    employee_id:=&empid;
    select eid,ename,basicsal into employee_id,employee_name,basic_salary from emp10 where eid=employee_id;

    HRA:=(basic_salary*15)/100;
    DA:=(basic_salary*50)/100;
    
    PF:=(basic_salary*10)/100;

    gross_salary:=basic_salary+(DA+HRA+MADICAL)-PF;

    dbms_output.put_line('Your gross salary is: '|| gross_salary);

END;
/
