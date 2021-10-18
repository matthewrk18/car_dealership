CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	phone_number VARCHAR(12),
	address VARCHAR(150),
	billing_info VARCHAR(25)
);

CREATE TABLE car(
	car_id SERIAL PRIMARY KEY,
	serial_number INTEGER,
	new_or_used VARCHAR(4),
	car_year VARCHAR(4),
	make VARCHAR(20),
	model VARCHAR(30),
	color VARCHAR(20),
	mileage VARCHAR(6),
	msrp NUMERIC(7,2),
	available_y_n_ VARCHAR(1)
);

CREATE TABLE salesperson(
	salesperson_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);

CREATE TABLE mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);

CREATE TABLE service(
	service_id SERIAL PRIMARY KEY,
	service_name VARCHAR(50),
	hourly_rate INTEGER
);

CREATE TABLE parts(
	parts_id SERIAL PRIMARY KEY,
	part_number INTEGER,
	description VARCHAR(100),
	purchase_price INTEGER,
	retail_price INTEGER
);

CREATE TABLE sales_invoice(
	invoice_id SERIAL PRIMARY KEY,
	invoice_number INTEGER,
	invoice_date DATE DEFAULT CURRENT_DATE,
	sales_price NUMERIC(7,2),
	salesperson_id INTEGER,
	car_id INTEGER,
	customer_id INTEGER,
	FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
	FOREIGN KEY (car_id) REFERENCES car(car_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE service_ticket(
	service_ticket_id SERIAL PRIMARY KEY,
	service_ticket_number INTEGER,
	date_recieved VARCHAR(11),
	service_comments VARCHAR(200),
	date_returned VARCHAR(11),
	car_id INTEGER,
	customer_id INTEGER,
	FOREIGN KEY (car_id) REFERENCES car(car_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE service_mechanic(
	service_mechanic_id SERIAL PRIMARY KEY,
	mechanic_id INTEGER,
	service_id INTEGER,
	service_ticket_id INTEGER,
	FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
	FOREIGN KEY (service_id) REFERENCES service(service_id),
	FOREIGN KEY (service_ticket_id) REFERENCES service_ticket(service_ticket_id),
	hours INTEGER,
	mechanics_comments VARCHAR(200),
	rate INTEGER
);

CREATE TABLE parts_used(
	parts_used_id SERIAL PRIMARY KEY,
	parts_id INTEGER,
	service_ticket_id INTEGER,
	FOREIGN KEY (parts_id) REFERENCES parts(parts_id),
	FOREIGN KEY (service_ticket_id) REFERENCES service_ticket(service_ticket_id),
	number_used INTEGER,
	price INTEGER
);




