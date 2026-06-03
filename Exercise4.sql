use northwind;

select  ProductName, UnitPrice
from Products
where UnitPrice = (select max(UnitPrice)
						from Products);
                        
select OrderID, ShipVia, ShipAddress
from Orders
where ShipVia in (select ShipperID from Shippers where CompanyName like "%Federal%");

select OrderID, ProductID
from `Order Details`
where ProductID in (select ProductID from Products where ProductName like "%Sasquatch%");

select FirstName, LastName, EmployeeID
from Employees
where EmployeeID in (select EmployeeID from Orders where OrderID = 10266); 

select ContactName, CustomerID
from Customers
where CustomerID in (select CustomerID from Orders where OrderID = 10266);
