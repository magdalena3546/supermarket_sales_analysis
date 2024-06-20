
-- calculate average values
SELECT 
	AVG(UnitPrice) AS 'Average unit price',
	AVG(Quantity) AS 'Average quantity',
	AVG(Tax) AS 'Average tax',
	AVG(Total) AS 'Average total price',
	AVG(COGS) AS 'Average COGS',
	AVG(GrossIncome) AS 'Average gross income',
	AVG(Rating) AS 'Average rating'
FROM sales;

-- calculate average values for branch
SELECT 
	Branch,
	AVG(UnitPrice) AS 'Average unit price',
	AVG(Quantity) AS 'Average quantity',
	AVG(Tax) AS 'Average tax',
	AVG(Total) AS 'Average total price',
	AVG(COGS) AS 'Average COGS',
	AVG(GrossIncome) AS 'Average gross income',
	AVG(Rating) AS 'Average rating'
FROM sales
GROUP BY Branch;

-- calculate average values for prodcut line
SELECT 
	ProductLine AS 'Product line',
	AVG(UnitPrice) AS 'Average unit price',
	AVG(Quantity) AS 'Average quantity',
	AVG(Tax) AS 'Average tax',
	AVG(Total) AS 'Average total price',
	AVG(COGS) AS 'Average COGS',
	AVG(GrossIncome) AS 'Average gross income',
	AVG(Rating) AS 'Average rating'
FROM sales
GROUP BY ProductLine;

-- calculate average values for payment method
SELECT 
	PaymentMethod AS 'Payment method',
	AVG(UnitPrice) AS 'Average unit price',
	AVG(Quantity) AS 'Average quantity',
	AVG(Tax) AS 'Average tax',
	AVG(Total) AS 'Average total price',
	AVG(COGS) AS 'Average COGS',
	AVG(GrossIncome) AS 'Average gross income',
	AVG(Rating) AS 'Average rating'
FROM sales
GROUP BY PaymentMethod;