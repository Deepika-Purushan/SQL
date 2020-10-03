-- Activity 9-------------------
-- Create the customers table
 use Deepika_activities;
create table customers (
    customer_id int primary key, customer_name varchar(32),
    city varchar(20), grade int, salesman_id int);

-- Insert values into it
insert into customers values 
(3002, 'Nick Rimando', 'New York', 100, 5001), (3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002), (3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006), (3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007), (3001, 'Brad Guzan', 'London', 300, 5005);
select*from Deepika_activities.customers;

-- Write an SQL statement to know which salesman are working for which customer.
select a.customer_name as 'Customer Name', b.name as 'Salesman Name' from Deepika_activities.customers a inner join Deepika_activities.salesman b 
on a.salesman_id=b.salesman_id;

-- Write an SQL statement to make a list in ascending order for the customer who holds a grade less than 300 and works either through a salesman.
SELECT a.customer_name as 'Customer Name', a.city, a.grade, b.name AS "Salesman", b.city FROM customers a 
LEFT OUTER JOIN salesman b ON a.salesman_id=b.salesman_id WHERE a.grade<300 
ORDER BY a.customer_id;

-- Write an SQL statement to find the list of customers who appointed a salesman for their jobs who gets a commission from the company is more than 12%.
select a.customer_name as 'Customer Name', b.name as 'Salesman Name',b.commission from Deepika_activities.customers a inner join Deepika_activities.salesman b 
on a.salesman_id=b.salesman_id where b.commission>12;

-- Write an SQL statement to find the details of a order i.e. order number, order date, amount of order, which customer gives the order and which salesman works for that 
-- customer and commission rate he gets for an order.
select a.order_no ,a.order_date, a.purchase_amount as 'Amount of Order', b.customer_name, b.grade, c.name as 'Salesman Name', c.commission from Deepika_activities.orders a 
inner join Deepika_activities.customers b on a.customer_id=b.customer_id
inner join Deepika_activities.salesman c on c.salesman_id=a.salesman_id;

