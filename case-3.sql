SELECT COUNT(category_id) AS Jumlah_Barang, categories.name AS Nama_Kategori
FROM products
INNER JOIN categories
ON products.category_id = categories.id
GROUP BY category_id
ORDER BY Jumlah_Barang DESC
LIMIT 1;