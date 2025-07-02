-- Orders per Employee
SELECT 
	e.FirstName + ' ' + e.LastName
	AS EmployeeName,
		COUNT(o.OrderID) 
	AS TotalOrders
FROM 
	Employees e
JOIN 
	Orders O
	ON o.EmployeeID  = e.EmployeeID
GROUP BY 
		e.FirstName, e.LastName
ORDER BY 
		TotalOrders DESC;