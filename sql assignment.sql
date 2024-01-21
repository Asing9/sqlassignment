create database AI;
use AI;
create table Tech (id int , technology varchar(25) not null);
insert into Tech values (1, 'Python'),
(1,'Tableau'),
(1,'Data science'),
(2,'SQL'),
(2,"R"),
(2,'Power BI');
## "Data science",'SQL','Python'
select id from tech where technology in ("Data science",'SQL','Python');

create table product_info2 (pr_id int , product_name varchar (25),primary key(pr_id));
insert into product_info2 values (1001,'Blog'),(1002,'Youtube'),(1003,"education");
create table product_info_likes2 (user_id int, pr_id int, liked_date date, foreign key(pr_id) references product_info2(pr_id) );
insert into product_info_likes2 values (1,1001,'2020-06-15');
insert into product_info_likes2 values (2,1002,'2023-12-14');
insert into product_info_likes2 values (1,1001,'2022-09-07');

select * from product_info_likes2;
select * from product_info2;
select pr_id from product_info_likes2 where liked_date=Null;




