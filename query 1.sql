SELECT
    c.CustomerId,
    c.FirstName || ' ' || c.LastName AS CustomerName,
    SUM(i.Total) AS TotalSpending
FROM
    Customer c
JOIN
    Invoice i ON c.CustomerId = i.CustomerId
GROUP BY
    c.CustomerId, CustomerName
ORDER BY
    TotalSpending DESC
LIMIT 10; -- Adjust the limit as needed
