-- Q3: Write a query that returns all withdrawals that are more than the user's monthly salary.
SELECT 
    w.id AS withdrawal_id,
    w.amount,
    u.email,
    u.monthly_salary
FROM withdrawals_withdrawal w
JOIN users_customuser u ON w.owner_id = u.id
WHERE w.amount > u.monthly_salary;