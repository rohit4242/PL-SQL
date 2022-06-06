-- 5) Write a function that returns balance for given
-- account number. (Create ACCOUNT table with
-- ACNO, CNAME, BNAME, BALANCE columns using
-- appropriate datatypes)

create table account_1(
    acno number(4),
    cname varchar2(30),
    bname varchar2(30),
    balance number(10,2)
);

insert into account_1 values(1,'Rohit','SBI',1000);
insert into account_1 values(2,'Rohit','ICICI',2000);
insert into account_1 values(3,'Rohit','HDFC',3000);
insert into account_1 values(4,'Rohit','SBI',4000);
insert into account_1 values(5,'Rohit','ICICI',5000);

create or replace function get_balance(acno in number)
return number is
begin
    select balance into balance from account_1 where acno = acno;
    return balance;
end;
/

declare
    acno number;
    balance number;
begin
    acno:=1;
    balance:=get_balance(acno);
    dbms_output.put_line("Balance for account number "||acno||" is "||balance);
end;
/
