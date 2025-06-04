# Table Aliases in PostgreSQL

## What is a Table Alias?
- A **table alias** is a temporary name given to a table (or subquery) in a SQL statement.
- It simplifies complex queries and improves readability.

## Syntax
```sql
SELECT column_name
FROM table_name AS alias_name;
```


- The AS keyword is optional:
```sql
SELECT column_name
FROM table_name alias_name;
```

## Use Cases
- Shortening long table names in queries.
- Referencing derived tables or subqueries:

## Example 1
```sql
SELECT e.name, d.department_name
FROM employees AS e
JOIN departments AS d ON e.department_id = d.id;
```

## Example 2
```sql
SELECT avg_salary.dept_id, avg_salary.avg_sal
FROM (
  SELECT department_id AS dept_id, AVG(salary) AS avg_sal
  FROM employees
  GROUP BY department_id
) AS avg_salary;
```
