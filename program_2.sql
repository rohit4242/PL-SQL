
DECLARE
	x customer_rec%rowtype; 

BEGIN

	select * into x from customer_rec where id=1;
	dbms_output.put_line('Id = '||x.id);
	dbms_output.put_line('name = '||x.name);
	dbms_output.put_line('Address = '||x.address);
	dbms_output.put_line('salary = '||x.salary);

END;
/
