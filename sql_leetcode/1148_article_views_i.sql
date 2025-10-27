```sqlite
-- 1148. Article Views I
-- https://leetcode.com/problems/article-views-i/

-- Escreva sua consulta SQL abaixo

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id 
ORDER BY author_id

```
