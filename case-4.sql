SELECT users.name,
AVG(transactions.total) AS Nominal_ratarata FROM transactions
INNER JOIN users 
ON transactions.user_id = users.id
WHERE transactions.time > DATE_SUB(now(), INTERVAL 2 MONTH)
GROUP BY users.id