SELECT
    Country,
    COUNT(CustomerId) AS TotalCustomers
FROM
    Customer
GROUP BY
    Country
ORDER BY
    TotalCustomers DESC;