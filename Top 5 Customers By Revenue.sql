-- Top 5 Customers By Revenue[Customers are big bisnesses(company name)
SELECT TOP 5
	c.CompanyName,
		SUM(od.UnitPrice * od.Quantity * ( 1 - od.Discount))
		AS TotalRevenue
FROM
	Customers c 
JOIN 
	Orders o 
		ON c.CustomerID = o.CustomerID
JOIN
	[Order Details] od 
		ON o.OrderID = od.OrderID
GROUP BY 
		c.CompanyName
ORDER BY 
		TotalRevenue DESC;