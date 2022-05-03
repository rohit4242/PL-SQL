create table products(
    product_id number(4) primary key,
    product_name varchar2(50),
    list_price number(8,2)
);


insert into products values(1,'cake',100.00); 
insert into products values(2,'colddrink',20.00);
insert into products values(3,'popcorn',50.00);
insert into products values(4,'sandwich',150.00);

declare
    cursor cr_pro is select * from products order by list_price desc;
    row_count number(2):=0;
    num number(2):=0;
begin

    for r_row in cr_pro loop
        num:=&num;
        row_count := cr_pro%rowcount;
        dbms_output.put_line( r_row.product_id || ' ' ||r_row.product_name || ' ' || r_row.list_price);
        exit when row_count = num;
    end loop;
    dbms_output.put_line('Rowcount: ' || row_count);
end;
/