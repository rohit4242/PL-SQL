-- 3) Write a PL/SQL block to accept product name, qty 
-- and price from user and then calculate discount in 
-- Rs. based on the given (%).

DECLARE
    pro_name varchar2(15);
    qty number;
    price number;
    discount number:=10;
    discount_amount number;
    total number;
    
    final_payment number;
BEGIN
    pro_name:='&pro_name';
    qty:=&qty;
    price:=&price;

    total := qty*price;
    discount_amount := (total * discount)/100;
    final_payment := total - discount_amount;

    dbms_output.put_line('Your product name is: '|| pro_name);
    dbms_output.put_line('Your total amount is: '||total);
    dbms_output.put_line('Your total discount amount is: '||discount_amount);
    dbms_output.put_line('Your final payment is: '|| final_payment);

END;
/

