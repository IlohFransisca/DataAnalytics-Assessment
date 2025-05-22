-- Q4: Write a query that returns the number of users who signed up from each account source.
SELECT 
    account_source,
    COUNT(*) AS user_count
FROM users_customuser
GROUP BY account_source
ORDER BY user_count DESC;