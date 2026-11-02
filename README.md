# 🔍 MYSQL QUERY PRACTICE — FIELD GUIDE
**Assignment 02 · Ask the database better questions**

## Query skill matrix
| SELECT & FILTER | GROUP & SUMMARISE | JOIN & UPDATE |
|---|---|---|
| SELECT, DISTINCT, aliases | SUM, MIN, MAX, AVG | INNER JOIN |
| WHERE, AND, IS NULL | GROUP BY, HAVING | LEFT / RIGHT JOIN |
| ORDER BY, LIMIT | Aggregations | UPDATE |

## Query flow
```mermaid
flowchart LR
 A[SELECT] --> B[WHERE]
 B --> C[ORDER BY / LIMIT]
 C --> D[GROUP BY]
 D --> E[HAVING]
 E --> F[JOIN]
 F --> G[Interpret]
```

## Open the SQL workbook
<p align="center"><a href="MySQL_Assignment_2_Querying_Data.sql"><img src="https://img.shields.io/badge/OPEN%20SQL%20SCRIPT-MySQL%20Workbook-4479A1?style=for-the-badge&logo=mysql"/></a></p>

The script contains database setup, sample employee data and query exercises using employee, department and location tables.

> [!CAUTION]
> The script drops and recreates the employee database and clears tables. Use a disposable practice database only. Existing data in the target database can be lost.

## Recommended lab routine
1. Read the entire script and identify destructive statements.
2. Connect to a disposable MySQL instance.
3. Run setup and query sections in order.
4. Inspect returned rows and aggregates.

Synthetic employee records are used for learning. This assignment practises relational querying, not real workforce analysis.