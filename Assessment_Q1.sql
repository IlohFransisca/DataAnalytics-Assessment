-- Q1: Write a query that returns a list of all users who have at least one savings plan.
SELECT DISTINCT u.id, u.email, u.first_name, u.last_name
FROM users_customuser u
JOIN savings_savingsaccount s ON u.id = s.owner_id;