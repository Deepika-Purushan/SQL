-- Activity 7-----------------------------------------------

-- Write an SQL statement to find the total purchase amount of all orders.
select sum(purchase_amount) As "Total" from Deepika_activities.orders;
-- Write an SQL statement to find the average purchase amount of all orders.
select avg(purchase_amount) As "Average" from Deepika_activities.orders;
-- Write an SQL statement to get the maximum purchase amount of all the orders.
select max(purchase_amount) As "MAX" from Deepika_activities.orders;
-- Write an SQL statement to get the minimum purchase amount of all the orders.
select min(purchase_amount) As "MIN" from Deepika_activities.orders;
-- Write an SQL statement to find the number of salesmen listed in the table.
select count(salesman_id) As "Count" from Deepika_activities.orders;
select count(distinct salesman_id) As "Count" from Deepika_activities.orders;

-- Activity 8-----------------------------------------------

-- Write an SQL statement to find the highest purchase amount ordered by the each customer with their ID and highest purchase amount.
select customer_id, max(purchase_amount) as "Max" from Deepika_activities.orders group by customer_id;
-- Write an SQL statement to find the highest purchase amount on '2012-08-17' for each salesman with their ID.
select salesman_id, order_date, max(purchase_amount) as "Max" from Deepika_activities.orders where order_date='2012-08-17' group by salesman_id, order_date;
-- Write an SQL statement to find the highest purchase amount with their ID and order date, for only those customers who have a higher purchase amount within the list [2030, 3450, 5760, 6000].
select salesman_id, order_date, max(purchase_amount) as "Max" from Deepika_activities.orders group by salesman_id, order_date having max(purchase_amount) IN(2030, 3450, 5760, 6000);




