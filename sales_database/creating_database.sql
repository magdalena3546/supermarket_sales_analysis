CREATE DATABASE sales_database;
USE sales_database;
CREATE TABLE sales(
	 InvoiceId NVARCHAR(50) PRIMARY KEY,
		Branch CHAR(1),
		City NVARCHAR(100),
		CustomerType NVARCHAR(20),
		Gender NVARCHAR(10),
		ProductLine NVARCHAR(50),
		UnitPrice DECIMAL(10, 2),
		Quantity INT,
		Tax DECIMAL(10, 4),
		Total DECIMAL(10, 4),
		PurchaseDate DATE,
		PurchaseTime TIME,
		PaymentMethod NVARCHAR(20),
		COGS DECIMAL(10, 2),
		GrossMarginPercentage DECIMAL(5, 2),
		GrossIncome DECIMAL(10, 4),
		Rating DECIMAL(3, 1)
	);

BULK INSERT sales
FROM 'C:\Users\Desktop\supermarket_sales.csv'
WITH(
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '\n',
	FIRSTROW = 2
	);



