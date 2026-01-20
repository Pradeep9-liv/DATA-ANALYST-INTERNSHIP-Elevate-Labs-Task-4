# DATA-ANALYST-INTERNSHIP-Elevate-Labs-Task-4

# SQL Data Analysis Project (CSV SQL Live)

## Project Overview
This project demonstrates practical SQL skills by analyzing multiple CSV datasets using
**CSV SQL Live**, an in-browser SQL tool. The goal is to perform table joins, apply filters,
calculate revenue metrics, and extract meaningful business insights from the data.

The analysis focuses on customers, orders, products, and categories to simulate
real-world business decision-making scenarios.

---

## Datasets Used
The following CSV files were used in this project:

- `customers.csv` – Customer details including region information
- `orders.csv` – Order-level data with order dates
- `order_details.csv` – Line-level order information with quantities
- `products.csv` – Product details including unit price and category
- `categories.csv` – Product category information

Each CSV file was uploaded into **CSV SQL Live**, where it was treated as a SQL table.

---

## Steps Performed

### Step 1: Load Data
All CSV files were uploaded into CSV SQL Live and verified using sample SELECT queries.

---

### Step 2: INNER JOIN – Orders with Customers
Orders were joined with customer details to validate customer-order mappings.

**Business Insight:**  
Linking orders to customers enables customer-level analysis such as purchase behavior, order frequency, and lifetime value estimation.

---

### Step 3: LEFT JOIN – Customers Without Orders
A LEFT JOIN was used to identify customers who never placed any orders.
These customers are important for marketing and re-engagement strategies.

**Business Insight:**  
Inactive customers represent potential growth opportunities through targeted promotions, email campaigns, and onboarding strategies.

---

### Step 4: Revenue Per Product
Order details were joined with products to calculate total revenue per product
using quantity and unit price.

**Business Insight:**  
Revenue analysis at the product level helps identify high-performing SKUs and supports decisions related to inventory optimization and product portfolio management.

---

### Step 5: Category-wise Revenue Distribution
Products were joined with categories to calculate revenue contribution by category.
This helps identify high-performing product segments.

**Business Insight:**  
Category-level insights help businesses allocate marketing budgets, shelf space, and supply chain resources more effectively.

---

### Step 6: Conditional Filtering Using WHERE
Sales data was filtered by:
- Specific region (`OR`)
- Date range (`1996-07-04` to `1998-05-06`)

The dataset used datetime values (`YYYY-MM-DD HH:MM:SS`), so date filters were aligned
accordingly to avoid empty results.

**Business Insight:**  
Time- and region-based filtering allows businesses to evaluate regional performance, seasonal trends, and the effectiveness of localized strategies.

---

## 🛠 Tools Used
- **CSV SQL Live** – In-browser SQL execution on CSV files
- **GitHub** – Version control and project submission

---

## Conclusion
This project showcases the use of SQL joins, filtering, aggregation, and business-oriented
analysis on real datasets. It reflects practical data analyst skills such as debugging,
handling date formats, and translating query results into actionable insights.
