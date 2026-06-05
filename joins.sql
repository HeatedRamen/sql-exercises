use northwind;

select ProductID, ProductName, UnitPrice, CategoryName
from Products 
join Categories
    on Products.CategoryID = Categories.CategoryId
order by CategoryName, ProductName;

select ProductID, ProductName, UnitPrice, CompanyName
from Products
join Suppliers
    on Products.SupplierID = Suppliers.SupplierID
where UnitPrice > 75
order by ProductName;

select ProductID, ProductName, UnitPrice, CategoryName, CompanyName
from Products
join Categories 
    on Products.CategoryID = Categories.CategoryID
join Suppliers
    on Products.SupplierID = Suppliers.SupplierID
order by ProductName;

select ProductName, CategoryName
from Products
join Categories 
    on Products.CategoryID = Categories.CategoryID
where UnitPrice = (select max(UnitPrice)
						from Products);
					
select OrderID, ShipName, ShipAddress, CompanyName, ShipCountry
from Orders
join Shippers
    on Orders.ShipVia = ShipperID
where ShipCountry in (select ShipCountry
					  from Orders
                      where ShipCountry like '%Germany%');
                      
select Orders.OrderID, OrderDate, ShipName, ShipAddress, ProductName
from Orders 
join `Order Details`
    on Orders.OrderID = `Order Details`.OrderID
join Products
    on Products.ProductID = `Order Details`.ProductID
where Products.ProductID in (select ProductID 
							 from Products
							 where ProductName like '%Sasquatch%');




