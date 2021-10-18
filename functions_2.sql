SELECT *
FROM mechanic

UPDATE car
SET serial_number = '10003'
WHERE car_id = 3

CREATE OR REPLACE FUNCTION add_salesperson(
	salesperson_id INTEGER,
	first_name VARCHAR(50),
	last_name VARCHAR(50))
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO salesperson(salesperson_id, first_name, last_name)
	VALUES (salesperson_id, first_name, last_name);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_salesperson(1, 'Bill', 'Smith')
SELECT add_salesperson(2, 'Jane', 'Jones')

CREATE OR REPLACE FUNCTION add_mechanic(
	mechanic_id INTEGER,
	first_name VARCHAR(50),
	last_name VARCHAR(50))
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO mechanic(mechanic_id, first_name, last_name)
	VALUES (mechanic_id, first_name, last_name);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_mechanic(1, 'Joe', 'Johnson')
SELECT add_mechanic(2, 'Andrew', 'Frank')

CREATE OR REPLACE FUNCTION add_service(
	service_id INTEGER,
	service_name VARCHAR(50),
	hourly_rate INTEGER)
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO service(service_id, service_name, hourly_rate)
	VALUES (service_id, service_name, hourly_rate);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT *
FROM parts

SELECT add_service(1, 'Oil change', 30)
SELECT add_service(2, 'Tire rotation', 40)

CREATE OR REPLACE FUNCTION add_parts(
	parts_id INTEGER,
	part_number INTEGER,
	description VARCHAR(100),
	purchase_price INTEGER,
	retail_price INTEGER)
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO parts(parts_id, part_number, description, purchase_price, retail_price)
	VALUES (parts_id, part_number, description, purchase_price, retail_price);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_parts(1, 1001, 'Tire', 85, 170)
SELECT add_parts(2, 1002, 'Muffler', 175, 325)
