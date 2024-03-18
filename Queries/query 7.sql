SELECT
    BillingCountry AS Country, Genre, units_sold
FROM (
    SELECT
        i.BillingCountry,
        g.Name AS Genre,
        COUNT(g.Name) AS units_sold
    FROM
        Track t
    JOIN
        Genre g ON t.GenreId = g.GenreId
    JOIN
        InvoiceLine il ON t.TrackId = il.TrackId
    JOIN
        Invoice i ON il.InvoiceId = i.InvoiceId
    GROUP BY
        i.BillingCountry, g.Name
    ORDER BY
        i.BillingCountry, units_sold DESC
) AS subquery
GROUP BY
    Country
ORDER BY
    units_sold DESC;