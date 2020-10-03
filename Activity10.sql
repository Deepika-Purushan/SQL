-- Activity 10-----------------------------------

-- Write a query to find all the orders issued against the salesman who may works for customer whose id is 3007.
select*from Deepika_activities.orders where salesman_id=(select distinct salesman_id from Deepika_activities.orders where customer_id=3007);

-- Write a query to find all orders attributed to a salesman in New York.
select*from Deepika_activities.orders where salesman_id in (select salesman_id from Deepika_activities.salesman where city='New York');

-- Write a query to count the customers with grades above New York's average.
select grade, count(*) from Deepika_activities.customers group by grade having grade>(select avg(grade) from Deepika_activities.customers where city='New York');

-- Write a query to extract the data from the orders table for those salesman who earned the maximum commission

select order_no, purchase_amount, order_date, customer_id, salesman_id from Deepika_activities.orders where salesman_id IN(select salesman_id from Deepika_activities.salesman
 where commission=(select max(commission) from Deepika_activities.salesman));