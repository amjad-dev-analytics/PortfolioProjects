-- 1. Total revenue by country
SELECT c.Country,
       SUM(od.Unitprice * od.quantity * ( 1 - od.Discount)) 
       AS TotalRevenue
FROM 
    Customers c
JOIN 
    Orders o ON c.customerID = o.customerID
JOIN 
    [Order Details]od ON o.orderID = od.OrderID
GROUP BY
    c.Country
ORDER BY 
    TotalRevenue DESC;