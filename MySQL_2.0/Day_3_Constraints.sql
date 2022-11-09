create database dress_data;
use dress_data;

create table if not exists dress(
`Dress_ID` varchar(30),	
`Style`	varchar(30),	
`Price`	varchar(30),	
`Rating`	varchar(30),	
`Size`	varchar(30),	
`Season`	varchar(30),	
`NeckLine`	varchar(30),	
`SleeveLength` varchar(30),		
`waiseline`	varchar(30),	
`Material`	varchar(30),	
`FabricType`	varchar(30),	
`Decoration`	varchar(30),	
`Pattern Type` varchar(30),		
`Recommendation` varchar(30));

# how to load the data / import
LOAD DATA INFILE 'C:/Users/raman/Downloads/AttributeDataSet.csv'
into table dress
FIELDS TERMINATED by ','
ENCLOSED by '"'
lines terminated by '\n'
IGNORE 1 ROWS;

select * from dress;

-- ----------------------------------------------------------------------------------------------------------------------------------------

# Constraint

# NOT NULL - Ensures that a column cannot have a NULL value
# UNIQUE - Ensures that all values in a column are different
# PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
# FOREIGN KEY - Prevents actions that would destroy links between tables
# CHECK - Ensures that the values in a column satisfies a specific condition
# DEFAULT - Sets a default value for a column if no value is specified
# CREATE INDEX - Used to create and retrieve data from the database very quickly



create table if not exists test(
test_id int auto_increment,   #constraint
test_name varchar(30),
test_mailid varchar(30),
test_address varchar(30),
primary key (test_id)    #constraint
);

select * from test;

insert into test (test_name,test_mailid,test_address) values('Raman','ramansingh@gmail.com','Gurugram'),
('Ankit','ankit@gmail.com','Bilari'),
('Bhoraj','bhorah@gmail.com','Gurugram'),
('Shanky','shanky@outlook.com','Banglore'),
('Faisal','faisal@digimarketing.com','Gurugram');

select * from test;

-- ----------------------------------------------------------------------------------------------------------------------------------------

# check constraint

create table if not exists test1(
test_id int auto_increment,   #constraint
test_name varchar(30),
test_mailid varchar(30),
test_address varchar(30),
test_salary int check(test_salary > 10000),
primary key (test_id)    #constraint
);

select * from test1;

insert into test1 (test_name,test_mailid,test_address,test_salary) values('Raman','ramansingh@gmail.com','Gurugram',50000);
insert into test1 (test_name,test_mailid,test_address,test_salary) values('Ankit','ankit@gmail.com','Bilari',9000);
insert into test1 (test_name,test_mailid,test_address,test_salary) values('Bhoraj','bhorah@gmail.com','Gurugram',40000);
insert into test1 (test_name,test_mailid,test_address,test_salary) values('Shanky','shanky@outlook.com','Banglore',8000);
insert into test1 (test_name,test_mailid,test_address,test_salary) values('Faisal','faisal@digimarketing.com','Gurugram',90000);

-- ----------------------------------------------------------------------------------------------------------------------------------------

# CHECK constraint in multiple tables

create table if not exists test2(
test_id int auto_increment,   #constraint
test_name varchar(30),
test_mailid varchar(30),
test_address varchar(30) check(test_address = 'Gurugram'),
test_salary int check(test_salary > 10000),
primary key (test_id)    #constraint
);

insert into test2 (test_name,test_mailid,test_address,test_salary) values('Raman','ramansingh@gmail.com','Gurugram',50000);
insert into test2 (test_name,test_mailid,test_address,test_salary) values('Ankit','ankit@gmail.com','Bilari',9000);
insert into test2 (test_name,test_mailid,test_address,test_salary) values('Bhoraj','bhorah@gmail.com','Gurugram',40000);
insert into test2 (test_name,test_mailid,test_address,test_salary) values('Shanky','shanky@outlook.com','Banglore',80000);
insert into test2 (test_name,test_mailid,test_address,test_salary) values('Faisal','faisal@digimarketing.com','Gurugram',90000);

select * from test2;

-- ----------------------------------------------------------------------------------------------------------------------------------------

# how to add CHECK constraint after table already created

alter table test2 add check (test_id > 0);

-- ----------------------------------------------------------------------------------------------------------------------------------------

# NOT NULL constraint

create table if not exists test3(
test_id int not null,   #constraint
test_name varchar(30),
test_mailid varchar(30),
test_address varchar(30) check(test_address = 'Gurugram'),
test_salary int check(test_salary > 10000)
);

insert into test3 (test_name,test_mailid,test_address,test_salary) values('Raman','ramansingh@gmail.com','Gurugram',50000);
insert into test3 (test_name,test_mailid,test_address,test_salary) values('Ankit','ankit@gmail.com','Gurugram',20000);
insert into test3 (test_name,test_mailid,test_address,test_salary) values('Bhoraj','bhorah@gmail.com','Gurugram',40000);
insert into test3 (test_name,test_mailid,test_address,test_salary) values('Shanky','shanky@outlook.com','Gurugram',80000);
insert into test3 (test_name,test_mailid,test_address,test_salary) values('Faisal','faisal@digimarketing.com','Gurugram',90000);

-- ----------------------------------------------------------------------------------------------------------------------------------------

# DEFAULT constraint

create table if not exists test4(
test_id int default 0,   #constraint
test_name varchar(30),
test_mailid varchar(30),
test_address varchar(30) check(test_address = 'Gurugram'),
test_salary int check(test_salary > 10000)
);

insert into test4 (test_name,test_mailid,test_address,test_salary) values('Raman','ramansingh@gmail.com','Gurugram',50000);
insert into test4 (test_name,test_mailid,test_address,test_salary) values('Ankit','ankit@gmail.com','Gurugram',20000);
insert into test4 (test_name,test_mailid,test_address,test_salary) values('Bhoraj','bhorah@gmail.com','Gurugram',40000);
insert into test4 (test_name,test_mailid,test_address,test_salary) values('Shanky','shanky@outlook.com','Gurugram',80000);
insert into test4 (test_name,test_mailid,test_address,test_salary) values('Faisal','faisal@digimarketing.com','Gurugram',90000);

select * from test4;

