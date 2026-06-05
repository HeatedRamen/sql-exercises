use northwind;

insert into Suppliers 
values(6767, "Six7 Inc", "SxSven" ,"Brainrot Manager", "6767 Tung Street", "Sahur", "Brainrot", "676767", "TungTung", "676-767-6767", "676767", null);

select *
from Suppliers
where SupplierID = 6768;

insert into Products
values(78, "Tralalero", 6767, 8, "2 shoes", 1000.99, 10, 0, 0, 0);

select ProductID, ProductName, CompanyName
from Products
join Suppliers
on Products.SupplierID = Suppliers.SupplierID;


update Products
set UnitPrice = UnitPrice * 1.15
where ProductID = 78;

select ProductName, UnitPrice
from Products
where SupplierID = (select SupplierID from Suppliers where SupplierID = 6768);

delete from Products
where ProductId = 78;

delete from Suppliers
where SupplierID = 6767;

select * 
from Products;

select * 
from Suppliers;




