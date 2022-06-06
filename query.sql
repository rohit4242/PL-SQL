-- Hotel (Hotel_No, Name, Address)
-- Room (Room_No, Hotel_No, Type, Price)
-- Booking (Hotel_No, Guest_No, Date_From, Date_To, Room_No)
-- Guest (Guest_No, Name, Address)

create Hotel (Hotel_No number, Name varchar2(30), Address varchar2(30));
create Room (Room_No number, Hotel_No number, Type varchar2(30), Price number(10,2));
create Booking (Hotel_No number, Guest_No number, Date_From date, Date_To date, Room_No number);
create Guest (Guest_No number, Name varchar2(30), Address varchar2(30));

insert into Hotel values(1,'Hotel_1','Address_1');
insert into Hotel values(2,'Hotel_2','Address_2');
insert into Hotel values(3,'Hotel_3','Address_3');
insert into Hotel values(4,'Hotel_4','Address_4');
insert into Hotel values(5,'Hotel_5','Address_5');

insert into Room values(1,1,'Deluxe',1000);
insert into Room values(2,1,'Deluxe',2000);
insert into Room values(3,1,'Deluxe',3000);
insert into Room values(4,1,'Deluxe',4000);
insert into Room values(5,1,'Deluxe',5000);

insert into booking values(1,1,'2019-01-01','2019-01-10',1);
insert into booking values(1,2,'2019-01-01','2019-01-10',2);
insert into booking values(1,3,'2019-01-01','2019-01-10',3);
insert into booking values(1,4,'2019-01-01','2019-01-10',4);
insert into booking values(1,5,'2019-01-01','2019-01-10',5);

insert inot guest values(1,'Guest_1','Address_1');
insert inot guest values(2,'Guest_2','Address_2');
insert inot guest values(3,'Guest_3','Address_3');
insert inot guest values(4,'Guest_4','Address_4');
insert inot guest values(5,'Guest_5','Address_5');


-- 1. Delete all bookings before 1st January 2000 from the Booking table.
delete from Booking where Date_From < '2000-01-01';

-- 2. List full details of all hotels in London.
select * from Hotel where Address = 'London';

-- 3. List the names and addresses of all guests in London, alphabetically ordered by name.
select Name, Address from Guest where Address = 'London' order by Name;

-- 4. List all double or family rooms with a price below £40.00 per night, in ascending order of
-- price
select * from Room where Type = 'Double' or Type = 'Family' and Price < 40.00 order by Price;

-- 5. What is the total revenue per night from all double rooms?
select sum(Price) from Room where Type = 'Double';