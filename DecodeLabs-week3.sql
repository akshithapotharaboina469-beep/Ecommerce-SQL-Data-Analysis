USE decodelabs_week3;
SHOW TABLES;
CREATE TABLE ecommerce_sales (
    OrderID VARCHAR(20),
    Date DATE,
    CustomerID VARCHAR(20),
    Product VARCHAR(100),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    ShippingAddress TEXT,
    PaymentMethod VARCHAR(50),
    OrderStatus VARCHAR(50),
    TrackingNumber VARCHAR(50),
    ItemsInCart INT,
    CouponCode VARCHAR(50),
    ReferralSource VARCHAR(50),
    TotalPrice DECIMAL(10,2)
);

SHOW TABLES;

SELECT COUNT(*) FROM ecommerce_sales;
USE decodelabs_week3;
SELECT * FROM ecommerce_sales;
SELECT Product, TotalPrice
FROM ecommerce_sales;
SELECT *
FROM ecommerce_sales
WHERE TotalPrice > 5000;
SELECT *
FROM ecommerce_sales
ORDER BY TotalPrice DESC;
SELECT COUNT(*) AS Total_Orders
FROM ecommerce_sales;
SELECT SUM(TotalPrice) AS Total_Revenue
FROM ecommerce_sales;
SELECT AVG(TotalPrice) AS Average_Order_Value
FROM ecommerce_sales;
SELECT Product,
       SUM(TotalPrice) AS Revenue
FROM ecommerce_sales
GROUP BY Product
ORDER BY Revenue DESC;
SELECT PaymentMethod,
       COUNT(*) AS Orders
FROM ecommerce_sales
GROUP BY PaymentMethod;



