use northwind;

select count(*)
from Suppliers;

select sum(Salary) 
from Employees;

select min(UnitPrice)
from Products;

select avg(UnitPrice)
from Products;

select max(UnitPrice)
from Products;

select SupplierID, count(*)
from Products
group by (SupplierID);

select CategoryID, avg(UnitPrice)
from Products
group by (CategoryID);

select SupplierID, 
count(*) as count
from Products
group by (SupplierID)
having count >= 5;

select ProductID, ProductName,
(UnitPrice * UnitsInStock) as Inventory_Value
from Products
order by Inventory_Value desc, ProductName asc;