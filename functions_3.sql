CREATE OR REPLACE FUNCTION create_sales_invoice(
	invoice_id INTEGER,
	invoice_number INTEGER,
	invoice_date DATE,
	sales_price NUMERIC(7,2),
	salesperson_id INTEGER,
	car_id INTEGER,
	customer_id INTEGER)
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO sales_invoice(invoice_id, invoice_number, invoice_date, sales_price, salesperson_id, car_id, customer_id)
	VALUES (invoice_id, invoice_number, invoice_date, sales_price, salesperson_id, car_id, customer_id);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT *
FROM service_ticket

SELECT create_sales_invoice(1, 10001, '1/1/1900', 97000, 1, 1, 1)
SELECT create_sales_invoice(2, 10002, '1/1/1900', 81000, 2, 2, 2)

CREATE OR REPLACE FUNCTION create_service_ticket(
	service_ticket_id INTEGER,
	service_ticket_number INTEGER,
	date_recieved VARCHAR(11),
	service_comments VARCHAR(200),
	date_returned VARCHAR(11),
	car_id INTEGER,
	customer_id INTEGER)
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO service_ticket(service_ticket_id, service_ticket_number, date_recieved, service_comments, date_returned, car_id, customer_id)
	VALUES (service_ticket_id, service_ticket_number, date_recieved, service_comments, date_returned, car_id, customer_id);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT create_service_ticket(1, 1001, '1/1/2021', 'None', '1/3/2021', 2, 2)
SELECT create_service_ticket(2, 1002, '1/2/2021', 'None', '1/4/2021', 1, 1)

CREATE OR REPLACE FUNCTION create_service_mechanic(
	service_mechanic_id INTEGER,
	mechanic_id INTEGER,
	service_id INTEGER,
	service_ticket_id INTEGER,
	hours INTEGER,
	mechanics_comments VARCHAR(200),
	rate INTEGER)
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO service_mechanic(service_mechanic_id, mechanic_id, service_id, service_ticket_id, hours, mechanics_comments, rate)
	VALUES (service_mechanic_id, mechanic_id, service_id, service_ticket_id, hours, mechanics_comments, rate);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT * FROM parts_used

SELECT create_service_mechanic(1, 1, 1, 1, 3, 'none', 150)
SELECT create_service_mechanic(2, 2, 2, 2, 5, 'none', 250)

CREATE OR REPLACE FUNCTION create_parts_used(
	parts_used_id INTEGER,
	parts_id INTEGER,
	service_ticket_id INTEGER,
	number_used INTEGER,
	price INTEGER)
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO parts_used(parts_used_id, parts_id, service_ticket_id, number_used, price)
	VALUES (parts_used_id, parts_id, service_ticket_id, number_used, price);
END;
$MAIN$
LANGUAGE plpgsql;




