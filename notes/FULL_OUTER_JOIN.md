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