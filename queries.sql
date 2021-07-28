-- Multi-Table Query Practice
   
-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
    SELECT ProductName, SupplierName FROM [Products]
    JOIN Categories on Products.CategoryID = Categories.CategoryID
    JOIN Suppliers on Products.SupplierID = Suppliers.SupplierID;
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
    SELECT Orders.OrderID, SupplierName, OrderDate from [Orders]
    JOIN OrderDetails on Orders.OrderID = OrderDetails.OrderID
    JOIN Products on OrderDetails.ProductID = Products.ProductID
    JOIN Suppliers on Products.SupplierID = Suppliers.SupplierID
    WHERE OrderDate < "2012-08-09";
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
    SELECT ProductName, Quantity FROM [Orders]
    JOIN OrderDetails on Orders.OrderID = OrderDetails.OrderID
    JOIN Products on OrderDetails.ProductID = Products.ProductID
    WHERE Orders.OrderID = 10251;
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
    SELECT * FROM [Orders]
    JOIN Employees on Orders.EmployeeID = Employees.EmployeeID
    JOIN Customers on Orders.CustomerID = Customers.CustomerID;