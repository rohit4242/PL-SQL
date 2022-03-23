
declare
 
    num number(2) :=1;

begin

    if(num>=0 and num<=10) then 
        if num=0 then 
            dbms_output.put_line('Zero');
        elsif num=1 then 
            dbms_output.put_line('One');
        elsif num=2 then 
            dbms_output.put_line('Two');
        elsif num=3 then 
            dbms_output.put_line('Three');
        elsif num=4 then 
            dbms_output.put_line('Four');
        elsif num=5 then 
            dbms_output.put_line('Five');
        elsif num=6 then 
            dbms_output.put_line('Six');
        elsif num=7 then 
            dbms_output.put_line('seven');
        elsif num=8 then 
            dbms_output.put_line('Eight');
        elsif num=9 then 
            dbms_output.put_line('Nine');
        elsif num=10 then 
            dbms_output.put_line('Then');

        end if;
    end if;

end;