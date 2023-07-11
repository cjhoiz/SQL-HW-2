-- Member Table
create table member (
	member_id SERIAL primary key,
	join_date DATE,
	leave_date DATE
);

-- Customer Table
create table customer (
	customer_id SERIAL primary key,
	member_id INTEGER,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	address VARCHAR(50),
	foreign key (member_id) references member(member_id)
);

-- Movies Table
create table movies (
	movie_id SERIAL primary key,
	title VARCHAR(50)
);

-- Tickets Table
create table tickets(
	tickets_purchased SERIAL primary key,
	movie_id INTEGER,
	customer_id INTEGER,
	foreign key (movie_id) references movies(movie_id),
	foreign key (customer_id) references customer (customer_id)
);

-- Inventory Table
create table inventory (
	upc SERIAL primary key,
	prod_amount INTEGER
);

-- Concessions Tables
-- Candy Table
create table candy (
	candy_purchased SERIAL primary key,
	small_candy INTEGER,
	large_candy INTEGER
);

-- Soda Table
create table soda (
	soda_purchased SERIAL primary key,
	kid_soda INTEGER,
	small_soda INTEGER,
	medium_soda INTEGER,
	large_soda_ INTEGER,
	xl_soda INTEGER
);

-- Popcorn Table
create table popcorn (
	popcorn_purchased SERIAL primary key,
	kid_popcorn INTEGER,
	small_popcorn INTEGER,
	medium_popcorn INTEGER,
	large_popcorn INTEGER,
	xl INTEGER
);

-- Concessions Table
create table concessions (
	concessions_purchased SERIAL primary key,
	soda_purchased INTEGER,
	popcorn_purchased INTEGER,
	candy_purchased INTEGER,
	customer_id INTEGER,
	upc INTEGER,
	foreign key (soda_purchased) references soda(soda_purchased),
	foreign key (popcorn_purchased) references popcorn(popcorn_purchased),
	foreign key (candy_purchased) references candy(candy_purchased),
	foreign key (customer_id) references customer(customer_id),
	foreign key (upc) references inventory(upc)
);