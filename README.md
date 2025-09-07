# 🗄️ SQL Projects

A collection of **SQL database projects** developed and maintained by me.  
Each project demonstrates real-world database design with schemas, sample data, and example queries.

---

## 📦 Available Projects

### 📦 Inventory System
- **Database:** SQLite / MySQL / PostgreSQL
- **Description:** Manage products, suppliers, and customer orders.
- **Features:**
  - Track products, suppliers, and orders
  - Detect low-stock products
  - Supplier order history reports
  - Sales performance analysis by product
- **Files:**
  - `schema.sql` → tables: `Suppliers`, `Products`, `Orders`
  - `seed.sql` → sample supplier, product, and order data
  - `queries.sql` → reports for inventory & revenue
- [View Project](projects/InventorySystem/)

---

## 🛠 Setup

1. Clone the repo:
   ```bash
   git clone https://github.com/APonder-Dev/sql-projects.git
   cd sql-projects
   ```

2. Enter a project folder (e.g. `projects/InventorySystem/`).

3. Run scripts with **SQLite**:
   ```bash
   sqlite3 inventory.db < schema.sql
   sqlite3 inventory.db < seed.sql
   sqlite3 inventory.db < queries.sql
   ```

Or use **MySQL / PostgreSQL**:
```sql
SOURCE schema.sql;
SOURCE seed.sql;
SOURCE queries.sql;
```

---

## 📂 Repo Structure

```
.
├─ projects/
│  ├─ InventorySystem/
│  │  ├─ schema.sql
│  │  ├─ seed.sql
│  │  ├─ queries.sql
│  │  └─ README.md
│  └─ Coming Soon
├─ .gitattributes
├─ .gitignore
├─ LICENSE
└─ README.md
```

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).

---

## ⭐ Support

- Issues & suggestions → [GitHub Issues](../../issues)  
- Pull requests welcome  
- Star ⭐ this repo if you find the projects helpful!

---

## 💖 Donation

If you find these projects useful for learning or building your own apps, consider supporting development:  

[💸 Donate via PayPal](https://www.paypal.com/donate/?business=6TUCF33LPY9K2&no_recurring=0&item_name=Development+and+Coding+Features&currency_code=USD)
