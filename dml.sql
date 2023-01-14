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
);

-- since values are auto generated, is that why i keep getting errors?
-- how do i fix this?

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
);

SELECT * from car;

-- SERVICE
INSERT INTO service(
    car_id,
    mechanic_id,
    customer_id
) VALUES(
    1,
    1,
    1
)
-- MECHANIC
INSERT INTO mechanic(
    first_name,
    last_name
) VALUES(
    'Curtis'
    'Jackson'
),
(
    'Peter'
    'Griffin'
);

-- saying i have an additional column but there is none after select all:
SELECT * FROM mechanic

-- SERVICE_HISTORY
INSERT INTO service_history(
    history,
    serial_num
)

--??