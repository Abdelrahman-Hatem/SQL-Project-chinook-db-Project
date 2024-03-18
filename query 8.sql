SELECT
    a.ArtistId,
    a.Name AS Artist_Name,
    Round(SUM(il.UnitPrice * il.Quantity), 2) AS Artist_Total
FROM
    InvoiceLine il
JOIN
    Track trk ON il.TrackId = trk.TrackId
JOIN
    Album alb ON alb.AlbumId = trk.AlbumId
JOIN
    Artist a ON a.ArtistId = alb.ArtistId
GROUP BY
    a.ArtistId
ORDER BY
    Artist_Total DESC
LIMIT 10;
