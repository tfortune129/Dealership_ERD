-- SALESPERSON
INSERT INTO salesperson(
    first_name,
    last_name
) VALUES(
   'Janet',
   'Smith' 
),
(
   'Carl',
   'Roberts' 
);

SELECT * FROM salesperson
-- CUSTOMER
INSERT INTO customer(
    first_name,
    last_name
) VALUES(
    'Trinisia',
    'Fortune' 
),
(
    'Yona',
    'Fortune' 
);

SELECT * FROM customer

-- INVOICE
INSERT INTO invoice(
    salesperson_id,
    customer_id,
    car_id
)VALUES(
    1,
    1,
    1
),
(
    2,
    2,
    2
),
(
    1,
    2,
    1
);

SELECT * FROM invoice



-- CAR
INSERT INTO car(
    car_make,
    car_model,
    car_year
) VALUES(
    'Honda',
    'Accord-coupe',
    2013
),
(
    'Jeep',
    'Wrangler',
    2022
),
(
    'Honda',
    'Civic',
    2017
);

DELETE FROM car
where car_id = 4;
DELETE FROM car
where car_id = 5;
UPDATE car
SET
    car_model = 'Civic',
    car_year = 2019
WHERE
    car_id = 3;



SELECT * from car;

-- SERVICE
INSERT INTO service(
    car_id,
    mechanic_id,
    customer_id
) VALUES(
    3,
    2,
    1
);




-- MECHANIC
INSERT INTO mechanic(
    first_name,
    last_name
) VALUES(
    'Curtis',
    'Jackson'
),
(
    'Peter',
    'Griffin'
);

-- saying i have an additional column but there is none after select all:
SELECT * FROM mechanic
