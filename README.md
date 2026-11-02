# 🔍 MYSQL QUERY PRACTICE — WORKBOOK
**Assignment 02 · Ask the database better questions**

## Query skill matrix
| Skill | SQL tools |
|---|---|
| Select | SELECT, DISTINCT, aliases |
| Filter | WHERE, comparisons, AND, IS NULL |
| Change | UPDATE |
| Sort | ORDER BY, LIMIT |
| Aggregate | SUM, MIN, MAX, AVG |
| Group | GROUP BY, HAVING |
| Relate | INNER / LEFT / RIGHT JOIN |

## Query journey
<p align="center">🧾 SELECT → 🎯 FILTER → ↕️ SORT → 🧮 AGGREGATE → 🧩 JOIN → 📊 INTERPRET</p>

## Main workbook
[![Open SQL script](https://img.shields.io/badge/OPEN_SQL_SCRIPT-4479A1?style=for-the-badge&logo=mysql)](MySQL_Assignment_2_Querying_Data.sql)

The script contains database setup, sample employee data and query exercises using employee, department and location tables.

> [!CAUTION]
> The script drops and recreates the employee database and clears tables. Use a disposable practice database only. Existing data in the target database can be lost.

## Suggested lab routine
1. Read the entire script and identify destructive statements.
2. Connect to a disposable MySQL instance.
3. Run setup and query sections in order.
4. Inspect returned rows and aggregates.

Synthetic employee records are used for learning. This assignment practises relational querying, not real workforce analysis.