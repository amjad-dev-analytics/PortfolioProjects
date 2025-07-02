-- Monthly Revenue Trend
SELECT 
    FORMAT(o.OrderDate, 'yyyy-MM')
AS Month,
		SUM(od.UnitPrice * od.Quantity * ( 1- od.Discount))
AS TotalRevenue
FROM 
	Orders o
JOIN 
	[Order Details] od 
		ON o.OrderID = od.OrderID
GROUP BY 
		FORMAT(o.OrderDate, 'yyyy-MM')
ORDER BY 
		Month;