use ineuron_fsda;

select * from bank_details;
-- ----------------------------------------------------------------------------------------------------------------------------------------

# What is a Stored Procedure?

-- A stored procedure is a prepared SQL code that you can save, so the code can be reused over and over again.

-- So if you have an SQL query that you write over and over again, save it as a stored procedure, and then just call it to execute it.

-- You can also pass parameters to a stored procedure, so that the stored procedure can act based on the parameter value(s) that is passed.

-- ----------------------------------------------------------------------------------------------------------------------------------------

# stored procedure
Delimiter &&
create procedure select_rec()
begin
	select * from bank_details;
end &&
Delimiter ;

call select_rec();
-- ----------------------------------------------------------------------------------------------------------------------------------------

# stored procedure for maximum balance
Delimiter &&
create procedure select_max_bal()
begin
	select * from bank_details where balance in (select max(balance) from bank_details);
end &&
Delimiter ;

call select_max_bal();
-- ----------------------------------------------------------------------------------------------------------------------------------------

# create input in the stored procedure
Delimiter &&
create procedure avg_bal_jobrole(IN x varchar(50))   # IN means input
begin
	select avg(balance) from bank_details where job = x;   # x is a variable
end &&
Delimiter ;

call select_rec();
call avg_bal_jobrole('management');
-- ----------------------------------------------------------------------------------------------------------------------------------------

# create multiple input in the stored procedure
Delimiter &&
create procedure select_edu_job(IN x varchar(30), IN y varchar(30))    # x and y is a variable
begin
	select * from bank_details where education = x and job = y;
end &&
Delimiter ;

call select_rec();
call select_edu_job('tertiary','management');
-- ----------------------------------------------------------------------------------------------------------------------------------------
###########################################################################################################################################

# What is VIEW ?

-- In SQL, a view is a virtual table based on the result-set of an SQL statement.

-- A view contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database.

-- You can add SQL statements and functions to a view and present the data as if the data were coming from one single table.
-- ----------------------------------------------------------------------------------------------------------------------------------------

CALL `ineuron_fsda`.`select_rec`();

# create a view table
create view bank_view as select age, job, marital, balance, education from bank_details;

select * from `bank_view`;

select avg(balance) from bank_view where job = 'admin.';