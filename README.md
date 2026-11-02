# MySQL Query Workbook

**Exercise theme:** Querying a relational employee database  
**Practice environment:** MySQL Workbench or another compatible MySQL client

## Workbook contents

| Query skill | Techniques practised |
|---|---|
| Select and label | DISTINCT, column aliases |
| Filter rows | WHERE, comparison operators, AND, IS NULL |
| Modify data | UPDATE |
| Order and limit | ORDER BY, LIMIT |
| Summarise | SUM, MIN, MAX, AVG |
| Group results | GROUP BY, HAVING |
| Combine tables | INNER JOIN, LEFT JOIN, RIGHT JOIN |

## Main SQL file

**[MySQL_Assignment_2_Querying_Data.sql](MySQL_Assignment_2_Querying_Data.sql)**

The script includes database and table setup, DDL demonstrations, a small sample dataset, and query exercises using the employee, Departments, Location and Employees tables.

## Suggested execution order

1. Open the SQL file in MySQL Workbench.
2. Read the warning at the top before running anything.
3. Confirm that the connection is a disposable practice environment.
4. Execute the script in order.
5. Inspect the returned rows from the final query sections.

## Safety first

> **This script is destructive.** It drops and recreates the employee database and clears tables. Running it can remove existing data in that database. Do not use a production connection or a database containing important information.

The included employee records are synthetic examples for learning and do not describe a real company's workforce.

## Learning outcome

This assignment provides practice with retrieving, filtering, grouping, updating and joining relational data. The examples are intended to build SQL fluency before applying the same techniques to a larger analytical dataset.

---

**Shanmukh Koyya** · [GitHub](https://github.com/shanmukhkoyya) · [LinkedIn](https://www.linkedin.com/in/shanmukh-koyya/)
