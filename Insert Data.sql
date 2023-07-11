-- Member Data insert 
insert into member (
	member_id,
	join_date,
	leave_date
) values (
	1,
	'2009-11-14',
	NULL
);

-- Customer Data insert 
insert into customer (
	customer_id,
	member_id,
	first_name,
	last_name,
	address
) values (
	1,
	1,
	'Peter',
	'Griffin',
	'31 Spooner St Quahog, RI 17548'
);

-- Movies Data insert 
insert into movies (
	movie_id,
	title
) values (
	1,
	'Indiana Jones and the Temple of Doom'
);

-- Tickets Data Insert
insert into tickets (
	tickets_purchased,
	movie_id,
	customer_id
) values (
	4,
	1,
	1
);

-- Inventory Data insert 
insert into inventory (
	upc,
	prod_amount
) values (
	1,
	400
);

-- Candy Data insert 
insert into candy (
	candy_purchased,
	small_candy,
	large_candy
) values (
	3,
	1,
	2
);

-- Soda Data insert 
insert into soda (
	soda_purchased,
	kid_soda,
	small_soda,
	medium_soda,
	large_soda_,
	xl_soda
) values (
	1,
	0,
	0,
	0,
	0,
	1
);

-- Popcorn Data insert 
insert into popcorn (
	popcorn_purchased,
	kid_popcorn,
	small_popcorn,
	medium_popcorn,
	large_popcorn,
	xl
) values (
	1,
	0,
	0,
	0,
	0,
	1
);

-- Concessions Data insert 
insert into concessions (
	concessions_purchased,
	soda_purchased,
	popcorn_purchased,
	candy_purchased,
	customer_id,
	upc 
) values (
	5,
	1,
	1,
	3,
	1,
	1
);

select *
from concessions

select * from customer