# Pizza Sales — SQL Practice

This repository contains SQL practice files and CSV datasets for a pizza sales dataset. It includes basic, moderate, and advanced query examples along with the raw CSV data.

## Contents

- `Advance query.sql` — advanced SQL queries.
- `Basic Questions queries.sql` — basic practice queries.
- `Moderate_que_sql.sql` — moderate difficulty queries.
- `create database.sql` — schema creation script (if applicable).
- `orders.csv`, `order_details.csv`, `pizzas.csv`, `pizza_types.csv` — CSV datasets.

## Overview

Use the provided SQL files to practice querying the pizza sales data. The CSVs contain the raw data for orders, order details, pizza definitions, and pizza types.

## Quick Start (SQLite)

1. Create a new SQLite database and import CSVs (run from the `pizza_sales` directory):

```bash
sqlite3 pizza_sales.db
.mode csv
.import orders.csv orders
.import order_details.csv order_details
.import pizzas.csv pizzas
.import pizza_types.csv pizza_types
.quit
```

2. Run the SQL query files in your SQL client or via `sqlite3`:

```bash
sqlite3 pizza_sales.db < "Basic Questions queries.sql"
sqlite3 pizza_sales.db < "Moderate_que_sql.sql"
sqlite3 pizza_sales.db < "Advance query.sql"
```

Note: Adjust table names or import steps if your SQL engine requires different commands (MySQL, PostgreSQL, etc.).

## Notes

- Inspect `create database.sql` to see the intended schema and any CREATE TABLE statements.
- If column headers are present in CSVs, some clients require skipping the header row during import.

## Contact

If you want additional README detail or runnable examples (e.g., a Dockerized SQLite setup), tell me what you'd like added.
