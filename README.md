# SQL-Data-Eng

WEEK 1: Core SQL
─────────────────────────────────────────
Mon  | SELECT, WHERE, ORDER BY, LIMIT
Tue  | INNER JOIN, LEFT JOIN
Wed  | GROUP BY, COUNT, SUM, AVG, HAVING
Thu  | Practice — write 10 queries on one dataset
Fri  | Subqueries + CTEs
Sat  | Mini project: answer 5 real questions on a dataset
Sun  | Review + fix weak spots

WEEK 2: Advanced SQL
─────────────────────────────────────────
Mon  | Window functions: ROW_NUMBER, RANK, DENSE_RANK
Tue  | Window functions: LAG, LEAD, SUM OVER, AVG OVER
Wed  | CASE WHEN, NULL handling, COALESCE
Thu  | Practice — rewrite week 1 queries using CTEs
Fri  | Deduplication + incremental load patterns
Sat  | Mini project: sales analysis with window functions
Sun  | Review

WEEK 3: DE-Specific SQL
─────────────────────────────────────────
Mon  | SQL + Python (psycopg2 + pandas)
Tue  | Data quality checks in SQL
Wed  | Query optimization basics (EXPLAIN, indexes)
Thu  | Practice on real PostgreSQL database
Fri  | Build SQL layer of your ETL project
Sat  | Push to GitHub with README
Sun  | Interview Q&A self-test

========================================================================
WEEK 1: PostgreSQL Differences + DE Patterns:

Mon  | PostgreSQL Setup + Syntax Gaps (1hr)
     | → Install PostgreSQL + pgAdmin / DBeaver
     | → Practice: LIMIT, NOW(), SERIAL, || concat
     | → Run your existing SQL Server queries → fix errors

Tue  | Upsert + Conflict Handling (1hr)
     | → ON CONFLICT DO UPDATE (replaces SQL Server MERGE)
     | → ON CONFLICT DO NOTHING
     | → Practice: insert 100 rows, re-insert same rows with upsert

Wed  | JSONB — PostgreSQL Superpower (1hr)
     | → Store + query JSON inside PostgreSQL
     | → jsonb_extract_path, ->> operator, @> containment
     | → Practice: store API response as JSONB, query fields

Thu  | Partitioning in PostgreSQL (1hr)
     | → PARTITION BY RANGE (date-based — most common in DE)
     | → Create monthly partitions
     | → Practice: create orders table with 3 monthly partitions

Fri  | EXPLAIN ANALYZE — Query Plans (1hr)
     | → Read Seq Scan vs Index Scan
     | → Add indexes, compare before/after
     | → Practice: find a slow query, fix it with an index

Sat  | Star Schema Build (1hr)
     | → Create fact_sales + dim_customer + dim_date
     | → Load sample data
     | → Write 3 analytical queries across the schema

Sun  | Review + Fix Weak Spots (1hr)
     | → Redo anything that felt unclear
     | → Push schema + queries to GitHub

=====================================
Build a complete PostgreSQL database:

1. Design star schema (fact_sales + dim_customer,
   dim_product, dim_date)
2. Generate & load 100k sales records via Python
3. Write 5 analytical SQL queries using CTEs +
   window functions
4. Add indexes and show EXPLAIN improvement
5. Build a Python ETL script that loads new records
   with upsert logic

GitHub folder:
  postgres-sales-analytics/
  ├── schema/
  │   ├── create_tables.sql
  │   └── create_indexes.sql
  ├── data/
  │   └── generate_data.py
  ├── queries/
  │   └── analytics.sql
  ├── etl/
  │   └── load_data.py
  └── README.md
Build a complete PostgreSQL database:

1. Design star schema (fact_sales + dim_customer,
   dim_product, dim_date)
2. Generate & load 100k sales records via Python
3. Write 5 analytical SQL queries using CTEs +
   window functions
4. Add indexes and show EXPLAIN improvement
5. Build a Python ETL script that loads new records
   with upsert logic

GitHub folder:
  postgres-sales-analytics/
  ├── schema/
  │   ├── create_tables.sql
  │   └── create_indexes.sql
  ├── data/
  │   └── generate_data.py
  ├── queries/
  │   └── analytics.sql
  ├── etl/
  │   └── load_data.py
  └── README.md
  
