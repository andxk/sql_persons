DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;

CREATE TABLE IF NOT EXISTS customers
(
    id           SERIAL PRIMARY KEY,
    name         VARCHAR(20) NOT NULL,
    surname      VARCHAR(30) NOT NULL,
    age          INTEGER     NOT NULL,
    phone_number VARCHAR(20) UNIQUE
);


insert into hw2.customers (id, name, surname, age, phone_number)
values (1, 'Alexey', 'Petrov', 39, '+7 800 1 2 3 4 5 6 7');

insert into hw2.customers (id, name, surname, age, phone_number)
values (2, 'Andrey', 'Ivanov', 23, '+1 800 145 65 69');

insert into hw2.customers (id, name, surname, age, phone_number)
values (3, 'Olga', 'Vasina', 20, '225-45-00');

insert into hw2.customers (id, name, surname, age, phone_number)
values (4, 'Katya', 'noname', 30, '22-14');


CREATE TABLE IF NOT EXISTS orders
(
    id           SERIAL PRIMARY KEY,
    date         DATE,
    customer_id  INTEGER,
    product_name VARCHAR(255),
    amount       INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

insert into hw2.orders (id, date, customer_id, product_name, amount)
values  (1, '2025-10-01', 1, ' нига интересна€', 1020),
        (2, '2025-10-02', 2, ' нига неинтересна€', 100),
        (3, '2025-10-02', 1, ' нига треть€', 1300),
        (4, '2025-10-01', 3, ' нига толста€', 3500);



-- SELECT product_name
-- FROM hw2.orders
-- WHERE customer_id = (SELECT id FROM hw2.customers WHERE LOWER(name) = 'alexey');

-- select product_name
-- from orders o
-- join (select * from customers where lower(name) = 'alexey') c
-- on o.customer_id = c.id;

select product_name
from orders as o
join customers as c
on o.customer_id = c.id
where lower(c.name) = 'alexey';


