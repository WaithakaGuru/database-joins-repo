# FuLL OUTER JOIN

`FULL JOIN` - selects ALL records from both tables, even if there is not a match.

For rows with a match the values from both tables are available, if there is not a match the empty fields will get the value NULL.

## Note
`OUTER` is the default join type for `FULL JOIN`, so when you write `FULL JOIN` the parser actually writes FULL OUTER 

## Example
Join `products` table to `categories` table using `category_id`:

```sql
SELECT 
    testproduct_id, 
    product_name, 
    category_name
FROM products
FULL JOIN categories 
    ON products.category_id = categories.category_id;

# PostgreSQL Joins via Terminal (Linux)

## Are you using Linux?

###  Access PostgreSQL Terminal

```bash
sudo -u postgres psql -d hospital_db

## Join Command Syntax
sql

SELECT [columns]
FROM table1
[FULL|LEFT|RIGHT|INNER] JOIN table2 
  ON table1.column = table2.column;

## Practical Examples

FULL JOIN (All records from both tables)
sql

SELECT p.patient_name, d.doctor_name
FROM patients p
FULL JOIN doctors d ON p.doctor_id = d.doctor_id;

LEFT JOIN (All patients + matching doctors)
sql

SELECT p.patient_name, d.doctor_name
FROM patients p
LEFT JOIN doctors d ON p.doctor_id = d.doctor_id;

RIGHT JOIN (All doctors + matching patients)
sql

SELECT p.patient_name, d.doctor_name
FROM patients p
RIGHT JOIN doctors d ON p.doctor_id = d.doctor_id;

INNER JOIN (Only matching records)
sql

SELECT p.patient_name, d.doctor_name
FROM patients p
INNER JOIN doctors d ON p.doctor_id = d.doctor_id;