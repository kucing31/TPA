INSERT INTO `users` ( `name`, `email`, `password`) VALUES
('Aaliyah Khalif','aal@gmail.com', 'percobaan1'),
('Ahmad Nawawi','ahmad@gmail.com', 'percobaan2'),
('Budi Satrio','budi@gmail.com', 'percobaan3'),
('Caca Pambudi','caca@gmail.com', 'percobaan4'),
('Dani Putro','dani@gmail.com', 'percobaan5'),
('Eka Setiawan','eka@gmail.com', 'percobaan6'),
('Fani Mariana','fani@gmail.com', 'percobaan7'),
('Gita Fadila','gita@gmail.com', 'percobaan8'),
('Hana Putri','hana@gmail.com', 'percobaan9'),
('Ika Sari','ika@gmail.com', 'percobaan10');

INSERT INTO `categories` ( `name`) VALUES
('Makanan'),
('Minuman'),
('Pakaian'),
('Elektronik'),
('Kosmetik'),
('Alat Tulis'),
('Perlengkapan Rumah'),
('Perlengkapan Bayi'),
('Perlengkapan Olahraga'),
('Perlengkapan Hobi');


INSERT INTO `products` (`name`, `description`, `price`, `category_id`) VALUES 
('Beras', 'Beras Merah', 10000, 1),
('Gula', 'Gula Pasir', 5000, 1),
('Kopi', 'Kopi Kapal Api', 15000, 2),
('Susu', 'Susu UHT', 10000, 2),
('Kemeja', 'Kemeja Batik', 200000, 3),
('Celana', 'Celana Jeans', 150000, 3),
('Kacamata', 'Kacamata Hitam', 50000, 3),
('Kipas Angin', 'Kipas Angin Standar', 50000, 4),
('Televisi', 'Televisi LED', 2000000, 4),
('Handphone', 'Handphone Android', 2000000, 4),
('Tablet', 'Tablet Android', 2500000, 4),
('Lipstik', 'Lipstik Merah', 50000, 5),
('Bedak', 'Bedak Tabur', 50000, 5),
('Pensil', 'Pensil 2B', 5000, 6),
('Penghapus', 'Penghapus Karet', 5000, 6),
('Meja', 'Meja Makan', 500000, 7),
('Kursi', 'Kursi Makan', 500000, 7),
('Kasur', 'Kasur Bayi', 500000, 8),
('Mainan', 'Mainan Anak', 500000, 8),
('Sepatu', 'Sepatu Olahraga', 500000, 9),
('Bola', 'Bola Sepak', 500000, 9),
('Buku', 'Buku Tulis', 500000, 10),
('Papan Tulis', 'Papan Tulis', 500000, 10);






