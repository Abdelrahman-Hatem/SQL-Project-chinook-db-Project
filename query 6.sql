SELECT
    g.Name AS Genre,
    ar.Name AS Artist,
    COUNT(il.InvoiceLineId) AS TotalSales
FROM
    Genre g
JOIN
    Track t ON g.GenreId = t.GenreId
JOIN
    InvoiceLine il ON t.TrackId = il.TrackId
JOIN
    Album al ON t.AlbumId = al.AlbumId
JOIN
    Artist ar ON al.ArtistId = ar.ArtistId
GROUP BY
    Genre, Artist
ORDER BY
    TotalSales DESC
LIMIT 10;
