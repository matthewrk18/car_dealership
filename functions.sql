CREATE OR REPLACE FUNCTION add_customer(
	customer_id INTEGER,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	phone_number VARCHAR(12),
	address VARCHAR(150),
	billing_info VARCHAR(25))
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO customer(customer_id, first_name, last_name, phone_number, address, billing_info)
	VALUES (customer_id, first_name, last_name, phone_number, address, billing_info);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT *
FROM car

SELECT add_customer(1, 'Bruce', 'Wayne', '800-4GOTHAM', 'Gotham', 'cash')

SELECT add_customer(2, 'Clark', 'Kent', '123-456-7890', 'Metropolis', 'cash')
SELECT add_customer(3, 'Lex', 'Luthor', '321-654-0987', 'Metropolis', 'cash')
SELECT add_customer(4, 'Barry', 'Allen', '555-777-9999', 'Central City', 'cash')

CREATE OR REPLACE FUNCTION add_car(
	car_id INTEGER,
	serial_number INTEGER,
	new_or_used VARCHAR(4),
	car_year VARCHAR(4),
	make VARCHAR(20),
	model VARCHAR(30),
	color VARCHAR(20),
	mileage VARCHAR(6),
	msrp NUMERIC(7,2),
	available_y_n_ VARCHAR(1))
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO car(car_id, serial_number, new_or_used, car_year, make, model, color, mileage, msrp, available_y_n_)
	VALUES (car_id, serial_number, new_or_used, car_year, make,model, color, mileage, msrp, available_y_n_);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_car(1, 10001, 'new', '2021', 'Porsche', 'Cayman_GT4', 'black', '18', 99999, 'y')

SELECT add_car(2, 10002, 'new', '2021', 'Porsche', 'Taycan', 'green', '18', 82700, 'y')
SELECT add_car(3, 10003, 'new', '2021', 'Porsche', 'Macan', 'blue', '18', 55555, 'y')



