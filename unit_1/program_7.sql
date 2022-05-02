-- 7) Write a PL/SQL block to calculate the total,
-- percentage and grade of student based on his/her 
-- Rollno from RESULT table. (Create RESULT table 
-- with Rollno, Name, Sub1, Sub2, Sub3, Sub4, Sub5,
-- Total, Per, Grade attributes with appropriate data 
-- type).

Create Table RESULT(
    Rollno Number(10),
    Name Varchar2(20),
    Sub1 Number(10),
    Sub2 Number(10),
    Sub3 Number(10),
    Sub4 Number(10),
    Sub5 Number(10),
    Total Number(10),
    Per Number(10),
    Grade Varchar2(10)
);

insert into RESULT values(1,'A',100,100,100,100,100,500,500,'A');
insert into RESULT values(2,'B',100,100,100,100,100,500,500,'A');
insert into RESULT values(3,'C',100,100,100,100,100,500,500,'A');
insert into RESULT values(4,'D',100,100,100,100,100,500,500,'A');
insert into RESULT values(5,'E',100,100,100,100,100,500,500,'A');
insert into RESULT values(6,'F',100,100,100,100,100,500,500,'A');
insert into RESULT values(7,'G',100,100,100,100,100,500,500,'A');
insert into RESULT values(8,'H',100,100,100,100,100,500,500,'A');
insert into RESULT values(9,'I',100,100,100,100,100,500,500,'A');
insert into RESULT values(10,'J',100,100,100,100,100,500,500,'A');

declare 
    cnt number;
    total number;
    per number;
    grade varchar2(10);
begin
    select count(*) into cnt from RESULT;
    select sum(Total) into total from RESULT;
    select sum(Per) into per from RESULT;
    if per >= 90 then
        grade := 'A';
    elsif per >= 80 then
        grade := 'B';
    elsif per >= 70 then
        grade := 'C';
    elsif per >= 60 then
        grade := 'D';
    else
        grade := 'F';
    end if;
    dbms_output.put_line('Total Students: ' || cnt);
    dbms_output.put_line('Total Marks: ' || total);
    dbms_output.put_line('Total Percentage: ' || per);
    dbms_output.put_line('Grade: ' || grade);
end;
/