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
	cursor c_pro (low_price number, high_price number) is select * from products where list_price between low_price and high_price;
    r_row products%rowtype;
    low_price number(8,2):=0;
    high_price number(8,2):=0;

begin
    low_price:=&low_price;
    high_price:=&high_price;
    open c_pro(low_price,high_price);
    loop
        fetch c_pro into r_row;
        exit when c_pro%notfound;
        dbms_output.put_line(r_row.product_id||' '||r_row.product_name||' '||r_row.list_price);
    end loop;
    close c_pro;
end;
/