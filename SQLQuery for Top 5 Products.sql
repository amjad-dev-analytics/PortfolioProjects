-- Top 5 Products
SELECT top 5
    p.ProductName,
    SUM(od.Quantity) AS TotalQuantitySold
FROM 
    [Order Details] od
JOIN 
    Products p ON od.ProductID = p.ProductID
GROUP BY 
    p.ProductName
ORDER BY 
    TotalQuantitySold DESC;