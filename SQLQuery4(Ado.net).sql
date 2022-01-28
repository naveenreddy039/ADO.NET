create database payroll_services

create table Employee
(
	EmployeeId int identity,
	EmployeeName varchar(Max),
	PhoneNumber varchar(Max),
	Address varchar(Max),
	Department varchar(Max),
	Gender char,
	BasicPay float,
	Deductions float,
	TaxablePay float,
	Tax float,
	NetPay float,
	StartDate datetime,
	City varchar(Max),
	Country varchar(Max)
);
insert into Employee(EmployeeName,PhoneNumber,Address,Department,Gender,BasicPay,Deductions,TaxablePay,Tax,NetPay,StartDate,City,Country)
values('naveen','8309294800','udayagiri','HR','M',3000,2200,4000,1500,2500,GETDATE(),'nellore','India')

insert into Employee(EmployeeName,PhoneNumber,Address,Department,Gender,BasicPay,Deductions,TaxablePay,Tax,NetPay,StartDate,City,Country)
values('narasimha','9848424768','badvel','ENGG','M',5000,4200,8000,6500,7500,GETDATE(),'kadapa','India')

insert into Employee(EmployeeName,PhoneNumber,Address,Department,Gender,BasicPay,Deductions,TaxablePay,Tax,NetPay,StartDate,City,Country)
values('naveen','7259995766','electronic city','Marketing','M',2000,1200,3500,1000,1500,GETDATE(),'banglore','India')

select * from Employee

select schema_name(t.schema_Id) as schema_Name,
		t.name as table_name,
		t.create_date,
		t.modify_date,
from sys.tables t
order by schema_name,
		 table_name

alter procedure [dbo].[SpAddEmployeeDetails]
(
@EmployeeName varchar(Max),
@PhoneNumber varchar(Max),
@Address varchar(Max),
@Department varchar(Max),
@Gender char,
@BasicPay float,
@Deductions float,
@TaxablePay float,
@Tax float,
@NetPay float,
@StartDate datetime,
@City varchar(Max),
@Country varchar(Max)
)
as
begin

Insert into Employee values(@EmployeeName,@PhoneNumber,@Address,@Department,@Gender,@BasicPay,@Deductions,@TaxablePay,
@Tax,@NetPay,@StartDate,@City,@Country)

End

Select EmployeeID,EmployeeName,PhoneNumber,Address,Department,Gender,BasicPay,Deductions,TaxablePay,
Tax,NetPay,StartDate,City,Country from Employee


