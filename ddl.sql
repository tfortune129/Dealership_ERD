-- CREATE SALESPERSON TABLE
CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(45),
    last_name VARCHAR(45)
);
-- CREATE CUSTOMER TABLE
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(45),
    last_name VARCHAR(45)
);
-- CREATE INVOICE TABLE
CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    salesperson_id INTEGER,
    customer_id INTEGER,
    car_id INTEGER,
    FOREIGN KEY (salesperson_id) REFERENCES SALESPERSON(salesperson_id),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMER(customer_id),
    FOREIGN KEY (car_id) REFERENCES CAR(car_id)
);

-- CREATE CAR TABLE
CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    car_make VARCHAR(45),
    car_model VARCHAR(45),
    car_year VARCHAR(45)
);


-- CREATE SERVICE TABLE
CREATE TABLE service(
    service_ticket  SERIAL PRIMARY KEY,
    car_id INTEGER,
    mechanic_id INTEGER,
    customer_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES CAR(car_id),
    FOREIGN KEY (mechanic_id) REFERENCES MECHANIC(mechanic_id),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMER(customer_id)
);

-- CREATE MECHANIC TABLE
CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY, 
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    -- one mechanic can work on many cars while many mechanics can work on one car...
    -- car_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES CAR(car_id)
);

ALTER TABLE mechanic
DROP COLUMN car_id;

--dropped car id but still getting error


SELECT * FROM service_history
SELECT * from car
-- cant get service history to work even after alter