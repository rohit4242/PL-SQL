declare 
    basic_salary emp10.basicsal%type;
    employee_id emp10.eid%type:=1;
    employee_name emp10.ename%type;

    DA number(8,2):=0;
    HRA number(8,2):=0;
    MADICAL number(8,2):=0;
    PF number(8,2):=0;

    gross_salary number(8,2):=0;


begin
    employee_id:=&empid;
    select eid,ename,basicsal into employee_id,employee_name,basic_salary from emp10 where eid=employee_id;

    HRA:=(basic_salary*15)/100;
    DA:=(basic_salary*50)/100;
    
    PF:=(basic_salary*10)/100;

    gross_salary:=basic_salary+(DA+HRA+MADICAL)-PF;

    dbms_output.put_line('Your gross salary is: '|| gross_salary);

end;
/
