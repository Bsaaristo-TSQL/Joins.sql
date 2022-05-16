
--11-1
use MyGuitarShop;
select CategoryName , ProductName, ListPrice
from  Categories join Products
on Categories.CategoryID = Products.CategoryID
 ORDER BY CategoryName, ProductName asc;

 --11-2
 use MyGuitarShop;
 select FirstName, LastName, Line1, City, State, ZipCode
 from Customers join Addresses
 on Customers.CustomerID = Addresses.CustomerID
 where EmailAddress = 'allan.sherwood@yahoo.com'

 --11-3
 use MyGuitarShop;
 select FirstName, LastName, Line1, City, State, ZipCode
 from Customers as c join Addresses as a
 On c.CustomerID = a.CustomerID and c.ShippingAddressID = a.AddressID ;

 --11-4
 use MyGuitarShop;
 select LastName, FirstName, OrderDate, ProductName, ItemPrice, DiscountAmount, Quantity
 from Customers as c join Orders as o 
 on C.CustomerID = O.CustomerID join OrderItems as oi
 on o.OrderID = oi.OrderID join Products as p
 on oi.ProductID = p.ProductID
 order by LastName, OrderDate, ProductName;

 select * from Customers
 select * from Orders
 select * from OrderItems
 select * from Products


 --11-5
 use MyGuitarShop;
select p1.ProductName, p1.ListPrice
from Products as p
join Products as p1
on p.CategoryID = p1.CategoryID
group by p1.ProductName, p1.ListPrice

--11-6

use MyGuitarShop
select top 1 CategoryName, ProductID
from Categories as c full outer join Products as p
on c.CategoryID = p.CategoryID
order by ProductID

--11-7

use MyGuitarShop
select ShipDate as ShipStatus, OrderID, OrderDate
from Orders
where ShipDate =  ' '
union
select 'NOT SHIPPED', OrderID, OrderDate
from Orders
where shipdate <> 'NULL'
--conversion errors