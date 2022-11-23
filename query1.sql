# use created database--
use class_c2268;
create table student (
id int primary key auto_increment,
sname varchar(20) not null,
sphone bigint(11) not null unique,
semail varchar(30) not null unique,
saddr varchar(50),
squalification varchar(10) not null,
sfees double,
sdob date,
sdept varchar(20)
);
# add new column
alter table Student ADD age int after sdob;
# modify datatype size
alter table Student MODIFY squalification varchar(20) not null;
#modify constraint
alter table Student MODIFY sfees double not null;
# drop column
alter table Student DROP COLUMN sdept;
# change column name
alter table Student CHANGE COLUMN age sage int;
# rename table name
alter table Student RENAME TO student_details;
# insert single row
insert into student_details values
(1,'ankita',63637372,'ankita@mail.com','kolkata','MSC',1000.3,'1900-00-00',00);
# insert multiple rows
insert into student_details values
(2,'ranojoy',831122288,'ran@gmail.com','chennai','MCA',1000.3,'1988-10-01',27),
(3,'rupa',822822288,'rupa@gmail.com','kolkata','BE',1000.3,'1988-08-02',29),
(4,'arun',834332288,'arun@gmail.com','delhi','B Tech',1000.3,'1997-07-03',23),
(5,'Payel',834772288,'payel@gmail.com','pune','MCA',1000.3,'1998-06-04',25),
(6,'riya',834888288,'riya@gmail.com','mumbai','BE',1000.3,'2000-05-05',29),
(7,'priya',834992288,'prita@gmail.com','goa','B Tech',1000.3,'1990-04-06',28),
