-- Changing database structure
-- Using ALTER, UPDATE/SET, DELETE/WHERE, ADD, DROP

alter table popcorn
rename column xl to xl_popcorn;

alter table customer 
add email VARCHAR(150);

update customer set email = 'pgriffin@hahahaha.com' where customer_id = 1;

select * from customer;

alter table member
drop column leave_date;

select * from member;

alter table member
add column leave_date DATE;

update member 
set leave_date = '2023-12-30' 
where leave_date = '2023-12-31';


