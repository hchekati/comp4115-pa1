select sum(priceEach) from OrderDetails Join (Orders) On (Orders.orderNumber= OrderDetails.orderNumber) where shippedDate between '2003-06-01' and '2004-06-31';

SELECT * FROM employees WHERE firstName NOT REGEXP '^[A-Za-z0-9]+$';

select firstname,lastname from employees where reportsTo =  (select employeeNumber from employees where jobTitle = "President");

select Country, count(customerNumber) from Customers group by Country ;

select distinct(productName) from Products JOIN (OrderDetails,Orders) ON (OrderDetails.productCode=Products.productCode and Orders.orderNumber = OrderDetails.orderNumber) where DAYNAME(orderDate) = "Tuesday";

select productName from Products Join(OrderDetails,Orders,Customers)
on (OrderDetails.productCode=Products.productCode and Orders.orderNumber=OrderDetails.orderNumber and Customers.customerNumber = Orders.customerNumber) where customerName = “Mini Auto Werke”

select distinct count(country) from Offices;

SELECT DATEDIFF('2005-05-31','2003-01-06');

select firstName, lastName from employees Join (Offices) On (Offices.officeCode = Employees.officeCode) where city ="Boston";