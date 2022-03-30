declare 
    a number;
    c varchar2(10);

begin
    a:=&a;
    c:=&c;

    dbms_output.put_line('Enter user age: '||a);
    dbms_output.put_line('Enter user Name: '||c);

end;
/