```sqlite
-- 1683. Invalid Tweets
-- https://leetcode.com/problems/invalid-tweets/

-- Escreva sua consulta SQL abaixo
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;
```
