use northwind;

select * FROM Products;

select ProductID, ProductName, UnitPrice 
from Products;

select ProductID, ProductName, UnitPrice 
from Products 
order by UnitPrice asc;

select * from Products 
where UnitPrice <= 7.5;

select * from Products 
where UnitsInStock >= 100 
order by UnitPrice desc;

select * from Products 
where UnitsInStock >= 100 
order by UnitPrice 
desc, ProductName asc;

select * from Products
where UnitsInStock = 0 
and UnitsOnOrder > 0
order by ProductName;

select * from Categories;

select * from Products 
where CategoryID = 8;

select FirstName, LastName from Employees;

select * from Employees
where Title like '%Manager%';

select distinct(Title)
from Employees;

select * from Employees
where Salary
between 2000 and 2500;

select * from Suppliers;

select * from Products
where SupplierID = 4;
