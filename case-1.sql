SELECT products.name AS Nama_Barang, users.name AS Nama_Pembeli FROM transaction_products
INNER JOIN transactions
ON transaction_products.transaction_id = transactions.id
INNER JOIN users
ON transactions.user_id = users.id
INNER JOIN products
ON transaction_products.product_id = products.id
WHERE user_id = 1;