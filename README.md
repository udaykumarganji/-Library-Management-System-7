# -Library-Management-System-7
 Creating Views

## Overview
This task demonstrates the use of **views** in SQL. Views are virtual tables based on SQL queries that provide abstraction, simplify complex queries, and enhance data security.

The queries are based on the **Library Management System** schema from Task 1.

## Tools Used
- MySQL Workbench / DB Browser for SQLite
- GitHub for version control

##  Description

###  SQL Features Demonstrated
1. **CREATE VIEW** – Define reusable queries as virtual tables.
2. **JOIN in Views** – Combine data from multiple tables into a single logical view.
3. **GROUP BY with HAVING in Views** – Aggregate data inside a view.
4. **Querying a View** – Treat views like tables for `SELECT` queries.
5. **DROP VIEW** – Remove a view when no longer needed.

###  Views Created
1. **IssuedBooksView**  
   Displays all issued books with member and book details (JOIN on `IssuedBooks`, `Members`, `Books`).  

2. **BookDetailsView**  
   Shows each book along with its author, category, and published year.  

3. **ActiveMembersView**  
   Lists members who have borrowed more than one book, using `GROUP BY` and `HAVING`.  

### Files Included
- `views.sql` – SQL script with all view definitions and usage examples.
- `README.md` – This documentation.

### How to Use
1. Load the schema from **Task 1** (`library_schema.sql`) and insert data from **Task 2**.
2. Run `views.sql` to create the views.
3. Use `SELECT * FROM ViewName;` to query any view.
4. If required, remove a view using:  
   ```sql
   DROP VIEW ViewName;
   ```

## 💡 Key Learning Points
- Views simplify complex queries into reusable components.
- Views improve **data security** by exposing only selected columns/rows.
- **WITH CHECK OPTION** can enforce restrictions on updates through views.
- Views are **not physically stored** (unless materialized views are used).
