use Deepika_activities;
CREATE TABLE salesman (
    salesman_id int primary key,
    name varchar(32),
    city varchar(32),
    commission int
);
describe salesman;
-- Activity 2----------------------------------------
use Deepika_activities;
insert into salesman values (5001,'James Hoog','New York', 15), (5002,'Nail Knite','Paris', 13), (5005,'Pit Alex','London', 11), (5006,'McLyon','Paris', 14), 
(5007,'Paul Adam','Rome', 13), (5003,'Lauson Hen','San Jose', 12);
select *from salesman;

-- Activity 3----------------------------------------
use Deepika_activities;
select salesman_id, city from salesman;
select *from salesman where city='Paris';
select salesman_id, commission from salesman where name='Paul Adam';

-- Activity 4----------------------------------------
 alter table salesman add grade int;
 select *from salesman;
  update  salesman set grade=100;

-- Activity 5--------------------------------------
 select *from salesman;
 update salesman set grade=200 where city='Rome';
 update salesman set grade=300 where name='James Hoog';
 update salesman set name='Pierre' where name='McLyon';
  select *from Deepika_activities.salesman;
  
 