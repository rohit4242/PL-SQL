
declare
    r_product products%rowtype;

    cursor c_product(low_price number, high_price number) is select * from products where list_price between low_price and high_price;

begin
    
    for r_product in c_product(50, 150)
    loop
        dbms_output.put_line(r_product.product_id || ' ' || r_product.product_name || ' ' || r_product.list_price);
    end loop;

end;
/