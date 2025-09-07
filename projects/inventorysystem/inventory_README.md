# 📦 Inventory System (SQL)

An **improved SQL database project** to manage customers, suppliers, products, and orders.  
This project demonstrates **relational database design**, **data integrity constraints**, and **practical queries** for inventory control and sales reporting.

---

## 🗄️ Database Design

### Tables
- **Customers** → customer info (name, email, phone, city)  
- **Suppliers** → supplier info (name, contact, location)  
- **Products** → product details (name, category, price, stock, supplier)  
- **Orders** → orders placed by customers (status, date)  
- **OrderItems** → links orders to products (many-to-many relationship)  

---

## 🚀 Features

- Track customers, suppliers, products, and orders  
- Detect low-stock products  
- Supplier order history reports  
- Customer purchase history with total spent  
- Sales performance by product  
- Supports order **status tracking** (Pending, Completed, etc.)  
- Extendable for invoices, shipping, or categories  

---

## 📂 Files

- `schema.sql` → database structure (tables, constraints, indexes)  
- `seed.sql` → example customers, suppliers, products, and orders  
- `queries.sql` → useful SQL reports (sales, inventory, customer spending)  

---

## ▶️ How to Run

### SQLite
```bash
sqlite3 inventory.db < schema.sql
sqlite3 inventory.db < seed.sql
sqlite3 inventory.db < queries.sql
```

### MySQL / PostgreSQL
```sql
SOURCE schema.sql;
SOURCE seed.sql;
SOURCE queries.sql;
```

---

## 🔧 Example Queries

### Low-stock products
```sql
SELECT product_name, stock_quantity
FROM Products
WHERE stock_quantity < 10;
```

### Orders per customer
```sql
SELECT c.customer_name, COUNT(o.order_id) AS total_orders
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name;
```

### Customer purchase history
```sql
SELECT c.customer_name, SUM(oi.quantity * p.price) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderItems oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;
```

---

## 📜 License

This project is licensed under the [MIT License](../LICENSE).
