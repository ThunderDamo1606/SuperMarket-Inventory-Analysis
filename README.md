
# 🛒 Supermarket Inventory & Sales Analysis

End-to-end **data analytics project** using **SQL**, **Python (Pandas)** and **Power BI** to analyse supermarket sales performance, inventory health and stock-out risk.

> From raw CSVs to interactive dashboards – one repo for analysis, reporting and insights.
---
## ✨ Key Features

- 🔗 Combines **products, sales, inventory and suppliers** into a single analytical view  
- 📊 Ready-made **SQL queries** for stock levels, low-stock items, category-wise sales and product ranking  
- 🐍 **Pandas notebook** for seasonal trends, demand segmentation and sales vs stock comparison  
- 📈 **Power BI dashboards** with KPIs, heatmaps, trend lines and top-selling products  
- 🧱 Clean, **VS Code–friendly project structure**, easy to extend with new features


---

## 🧰 Tech Stack

- **Language:** Python 3  
- **Libraries:** Pandas, NumPy, Matplotlib  
- **Database:** MySQL (MySQL Workbench)  
- **BI Tool:** Power BI Desktop  
- **IDE / Tools:** VS Code, Git, GitHub  


---

## 🗂️ Dataset Overview

All source files are stored in the `data/` folder and joined mainly on **Product_ID** (and **Supplier_ID** where needed):

- `products.csv` – **Product master**  
  - `Product_ID`, `Product_Name`, `Category`, `Unit_Price`, `Status`  

- `inventory.csv` – **Current inventory snapshot**  
  - `Product_ID`, `Stock_Quantity`, `Reorder_Level`, `Reorder_Quantity`, `Date_Received`, `Expiration_Date`, `Warehouse_Location`  

- `sales.csv` – **Historical sales performance**  
  - `Product_ID`, `Sales_Volume`, `Last_Order_Date`  

- `suppliers.csv` – **Supplier reference data**  
  - `Supplier_ID`, `Supplier_Name`  


---

## 🔍 Analysis Workflow

### 1️⃣ SQL (MySQL)

Stored in: `sql/supermarket_queries.sql`  

SQL is used to:

- Retrieve **stock levels per product**  
- Identify **low-stock / near stock-out products** using  
  `Stock_Quantity <= Reorder_Level`  
- Calculate **total sales per category**  
- Rank products by **revenue** (`Sales_Volume × Unit_Price`)  
- Estimate **reorder requirements** and basic **inventory turnover**  

---

### 2️⃣ Python (Pandas)

Notebook: `notebooks/analysis.ipynb`  

Python is used to:

- Load and clean data from all CSV files  
- Convert date columns and handle missing / invalid values  
- Merge products, inventory, sales and suppliers into a **single DataFrame**  
- Analyse **monthly and seasonal sales trends**  
- Group metrics by product and category  
  - Total sales  
  - Average stock  
  - Demand level  
- Compare **monthly sales vs average stock** to understand **supply–demand alignment**  

---

### 3️⃣ Power BI Dashboards

Report file: `powerbi/Supermarket Inventory-DA.pbix`  

Dashboards include:

- 📆 **Monthly revenue & inventory trends**  
- 🏆 **Top-selling products** and sales share by category  
- 🚨 **Low-stock / stock-out alerts**  
- 📌 KPI cards for:
  - Total revenue  
  - Units sold  
  - Low-stock items  
  - Inventory turnover  


---

## 📁 Project Structure

```text
supermarket-project/ 
│
├── data/                     # CSV datasets (products, inventory, sales, suppliers)
├── notebooks/                # Jupyter notebook for Pandas analysis
├── sql/                      # MySQL query file(s)
├── powerbi/                  # Power BI .pbix dashboard 
├── images/                   # Dashboard screenshots (PNG files)
├── requirements.txt          # Python dependencies
└── README.md                 # Project documentation

```
## 🚀 Getting Started

Follow these steps to set up the project on your local machine.

### 1. Clone the repository :

```bash
git clone <your-repo-url>
cd supermarket-project

```
#### i. Create and activate a virtual environment (Windows)
```bash
python -m venv venv  
venv\Scripts\activate

```
#### ii. Install Python dependencies
```bash
pip install -r requirements.txt





```
### 2️. ▶️ How to Run the Project :
``` ```
#### Once the setup is complete, use the following steps to run the analysis and explore insights.
#### i. Run the Jupyter Notebook (Python Analysis)

- Open `notebooks/analysis.ipynb` in **VS Code** or **Jupyter Notebook**.  
- Select the `venv` Python interpreter.  
- Run all cells from top to bottom to:
  - Load and clean the data  
  - Perform exploratory data analysis  
  - Generate trend and comparison visualizations  

#### ii. Run SQL Queries (Database Insights)

- Open `sql/supermarket_queries.sql` in **MySQL Workbench**.  
- Connect to the `supermarket` database.  
- Execute the queries to view:
  - Current stock levels  
  - Low-stock / near stock-out products  
  - Category-wise sales  
  - Product-wise revenue and ranking  

#### iii. Explore the Power BI Dashboard (Business View)

- Open `powerbi/Supermarket Inventory-DA.pbix` in **Power BI Desktop**.  
- Ensure the data source points to the `data/` folder (update the path if required).  
- Use slicers such as **Category**, **Product**, and **Warehouse** to interact with:
  - Revenue and sales trends  
  - Top-performing products  
  - Low-stock and at-risk inventory  


## 📸 Dashboard Screenshots

Below are example views from the Power BI dashboard:

- **Sales & Inventory Overview** – High-level view of revenue, units sold and inventory position.  
- **Stock-Out & Inventory Health** – Focused view on low-stock items, stock-out risk and replenishment needs.  

``` ```
![Sales & Inventory Overview](images/supermarket_dashboard_overview.png)
![Stock-Out & Inventory Health](images/supermarket_dashboard_stockout.png)

---

### 📌 Roadmap

``` ```
Planned enhancements for this project include:

- Adding more granular **transaction-level sales data** (daily / hourly)  
- Modelling **supplier delivery lead times** for improved replenishment planning  
- Introducing basic **demand forecasting** and recommended reorder quantities  
- Deploying the analysis as a **lightweight web application or API** for business users  
- Implementing an **automated data refresh pipeline** for the Power BI dashboard  


## 👤 Author

**Damodar Sadavarte**

📧 Email: `damodarsadavarte2000@gmail.com`  
🔗 LinkedIn: https://www.linkedin.com/in/your-linkedin-id  
📊  Data Analyst – SQL | Python | Power BI
