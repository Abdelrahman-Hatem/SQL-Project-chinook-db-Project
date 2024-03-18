SELECT
    g.Name AS Genre,
    ROUND(SUM(il.UnitPrice * il.Quantity)) AS TotalSpendForGenre
FROM
    InvoiceLine il
JOIN
    Track t ON t.TrackId = il.TrackId
JOIN
    Genre g ON g.GenreId = t.GenreId
GROUP BY
    g.Name
ORDER BY
    TotalSpendForGenre DESC;
