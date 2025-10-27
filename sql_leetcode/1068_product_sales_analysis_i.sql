```sqlite
SELECT P.product_name, s.year, s.price
FROM Product p
JOIN Sales s 
ON s.product_id = p.product_id

-- ON p.product_id = s.product_id;
```
