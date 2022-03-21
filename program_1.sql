DECLARE
	
	name varchar2(25) not null:='Rohit';
	surname name%type:='Luni';

BEGIN

	dbms_output.put_line('name = '||name);
	dbms_output.put_line('surname = '||surname);

END;
