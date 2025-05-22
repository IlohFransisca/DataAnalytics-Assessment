-- Q2: Write a query to get the total amount saved by each user.
SELECT 
    u.id AS user_id,
    u.email,
    SUM(s.amount) AS total_saved
FROM users_customuser u
JOIN savings_savingsaccount s ON u.id = s.owner_id
GROUP BY u.id, u.email
ORDER BY total_saved DESC;