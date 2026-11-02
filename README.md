<div align="center"><h1>🔎 MYSQL QUERY FIELD GUIDE</h1><p>ASSIGNMENT 02 · RETRIEVE, FILTER, GROUP & JOIN</p><img src="https://img.shields.io/badge/MYSQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white"/></div>

## Query syntax map
| RETRIEVE | FILTER | SUMMARISE | COMBINE |
|---|---|---|---|
| `SELECT` | `WHERE` | `GROUP BY` | `INNER JOIN` |
| `DISTINCT` | `AND` | `HAVING` | `LEFT JOIN` |
| aliases | `IS NULL` | `SUM / AVG` | `RIGHT JOIN` |
| `ORDER BY` | `LIMIT` | `MIN / MAX` | `UPDATE` |

## SQL execution order — practical workflow
```mermaid
flowchart TD
 A[SELECT columns] --> B[WHERE rows]
 B --> C[GROUP BY]
 C --> D[HAVING groups]
 D --> E[ORDER BY]
 E --> F[LIMIT output]
 G[JOIN related tables] --> A
```

## Open the query workbook
<p align="center"><a href="MySQL_Assignment_2_Querying_Data.sql"><img src="https://img.shields.io/badge/OPEN%20SQL%20SCRIPT-MYSQL%20WORKBOOK-4479A1?style=for-the-badge&logo=mysql"/></a></p>

The script sets up sample employee, department and location tables before query exercises.

> [!CAUTION]
> The script drops and recreates the employee database and clears tables. Use a disposable practice database only; existing target data can be lost.

## Recommended lab cycle
`READ → IDENTIFY DESTRUCTIVE SQL → SET UP SANDBOX → RUN → CHECK RESULT SET`

Synthetic employee data is used for learning relational queries, not real workforce reporting.