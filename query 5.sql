SELECT
    strftime('%Y-%m', InvoiceDate) AS YearMonth,
    SUM(Total) AS TotalSales
FROM
    Invoice
GROUP BY
    YearMonth
ORDER BY
    YearMonth;
	
	
