-- Project Title: Supermarket Inventory & Sales Analysis --
CREATE DATABASE Supermarket;
SHOW DATABASES;
USE Supermarket;
/* First Creating Table For The Product Table*/ 
CREATE TABLE products (
    Product_ID VARCHAR(50) PRIMARY KEY,
    Product_Name VARCHAR(255),
    Catagory VARCHAR(100),
    Unit_Price DECIMAL(10,2),
    Status VARCHAR(50)
);

/*Table For Inventary*/
CREATE TABLE inventory (
    Product_ID VARCHAR(50),
    Stock_Quantity INT,
    Reorder_Level INT,
    Reorder_Quantity INT,
    Date_Received DATE,
    Expiration_Date DATE,
    Warehouse_Location VARCHAR(255),
    FOREIGN KEY (Product_ID) REFERENCES products(Product_ID)
);

/* Table For Sales */
CREATE TABLE sales (
    Product_ID VARCHAR(50),
    Sales_Volume INT,
    Last_Order_Date DATE,
    FOREIGN KEY (Product_ID) REFERENCES products(Product_ID)
);

/* Table For Suppliers */
CREATE TABLE suppliers (
    Supplier_ID VARCHAR(50) PRIMARY KEY,
    Supplier_Name VARCHAR(255)
);

SHOW TABLES;
DESC inventory;

/* Varifying The Data Files */
SELECT * FROM products;
SELECT * FROM inventory;
SELECT * FROM sales;
SELECT * FROM suppliers;
DROP TABLE IF EXISTS suppliers;

SELECT COUNT(*) FROM products;
SELECT COUNT(*) FROM inventory;
SELECT COUNT(*) FROM sales;
SELECT COUNT(*) FROM suppliers;

/* Task:No.1: Retrieve Stock Levels Per Product.*/
SELECT p.Product_Name, i.Stock_Quantity
FROM inventory i 
JOIN products p USING (Product_ID);

/*Task:No.2: Find Products Nearing Out-Of-Stock.*/
SELECT p.Product_Name, i.Stock_Quantity
FROM inventory i
JOIN products p USING (Product_ID)
WHERE i.Stock_Quantity <= 10;

/* Here I Updating Column Name Catagoty To Category*/
ALTER TABLE products
RENAME COLUMN Catagory TO Category;

/*Task:No.3:Calculate Total Sales Per Product Category.*/   
SELECT  p.Category, SUM(s.Sales_Volume) AS Total_Sales
FROM sales s
JOIN products p USING (Product_ID)
GROUP BY p.Category;

/*Task:No.4: Identify slow-moving products. */
SELECT p.Product_Name, s.Sales_Volume
FROM sales s 
JOIN products p USING (Product_ID)
ORDER BY s.Sales_Volume ASC
LIMIT 20;

/*Task:No.5: Rank products by revenue */
SELECT p.Product_Name,(s.Sales_Volume * p.Unit_Price) AS Revenue
FROM sales s 
JOIN products p USING (Product_ID)
ORDER BY Revenue DESC;

/* Task:No.6: Determine Monthly Reorder Requirements. */
SELECT p.Product_Name, i.Stock_Quantity, i.Reorder_Level, (i.Reorder_Level - i.Stock_Quantity) AS Need_Reorder
FROM inventory i
JOIN products p USING (Product_ID)
WHERE (i.Reorder_Level- i.Stock_Quantity) >0;

/*Task:No.7:Track Inventory Turnover Rate Per Store. */
SELECT Product_Name , (s.Sales_Volume/i.Stock_Quantity) AS Inventory_Turnover_Rate
FROM sales s 
JOIN inventory i USING (Product_ID)
JOIN products p USING (Product_ID);


