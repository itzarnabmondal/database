create database emp;
use emp;

create table emp1(
 id numeric(2),
 name varchar(10),
 basic numeric(6, 2),
 desiganation varchar(10),
 age numeric(3)
);

alter table emp1 modify basic integer(6);
alter table emp1 modify name varchar(15);

create table emp-trainee (
 id numeric(2),
 basic numeric(6, 2),
 name varchar(10),
 desiganation varchar(10),
 age numeric(3)
);

insert into emp values (1, 5000, 'arnab', 'manager', 19);
insert into emp values (2, 4500, 'arpan', 'manager', 22);
insert into emp values (3, 3000, 'dip', 'manager', 17);
insert into emp values (4, 4000, 'rahul', 'manager', 21);
insert into emp values (5, 5000, 'dipankar', 'manager', 20);

insert into emp-trainee select * from emp;

select * from emp, emp-trainee;

alter table emp1 add skill varchar(15) after age;
alter table emp1 add doj date after skill;

update emp1 set skill='j2ee' where id=1;
update emp1 set skill='asp.net' where id=2;
update emp1 set skill='django' where id=3;
update emp1 set skill='node.js' where id=4;
update emp1 set skill='laravel' where id=5;

update emp1 set doj='2022-03-29' where id=1;
update emp1 set doj='2022-01-10' where id=2;
update emp1 set doj='2022-02-19' where id=3;
update emp1 set doj='2022-01-16' where id=4;
update emp1 set doj='2022-06-30' where id=5;

alter table modify desiganation varchar(20);

update emp-trainee set desiganation ="it specialist";
update emp1 set skill='puyhon' where desiganation='manager';

select * from emp1, emp-traniee;

delete from emp1 where doj='2022-02-19';

