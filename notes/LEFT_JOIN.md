# LEFT JOIN 
---

## What is a Left Join
A __Left Join__ returns __all rows from the Left Table__ and the __matching rows from the right table__

🪶 If there is no match in the right table, the result will still include the left table's row, __but the right table's columns will be__ `null`

---

## Visual explanation

![A Left Join Venn Diagram](../images/left_join_venn_diagram.png)


## Syntax 

To perform a Left Join follow the following:

```sql 
SELECT left_table.column1, right_table.column2
FROM left_table
LEFT JOIN right_table
ON 
left_table.common_column = right_table.common_column
```
---

## Practical Example 

Say one is working on a companies Database with Employees_table and Departments_table and wants to fetch each Employee alongside his/her department

`employee` (__left table__)

id | name |  department_id
|--| ----- |-------------- |
1 | Kim | 10 |
2| John | 20
3| Sean | NULL

`department` table
| id | name        |
| -- | ----------- |
| 10 | HR          |
| 20 | Engineering |

_Left Join QUERY:_

```sql
SELECT 
  employees.name, 
  departments.name AS department
FROM 
  employees
LEFT JOIN 
  departments
ON 
  employees.department_id = departments.id;
```

__Result will be:__
| name  | department  |
| ----- | ----------- |
| Kim | HR          |
| John   | Engineering |
| Sean | NULL        |
