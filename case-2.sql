SELECT COUNT(product_id) AS jumlah_pembelian, products.name AS Nama_barang, product_id 
FROM transaction_products
INNER JOIN products
ON transaction_products.product_id = products.id
GROUP BY product_id
ORDER BY jumlah_pembelian DESC
LIMIT 3; 