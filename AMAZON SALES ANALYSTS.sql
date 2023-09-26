/* 1.Berapa total produk dalam setiap kategori? */
SELECT category,
COUNT(*) AS total_produk
FROM [AMAZON ].[dbo].[amazon$]
GROUP BY category
ORDER BY total_produk DESC;
/* 2. Hitung rata-rata persentase diskon pada setiap kategori*/
SELECT category, 
AVG(discount_percentage) AS rata_rata_diskon
FROM [AMAZON ].[dbo].[amazon$]
GROUP BY category
ORDER BY rata_rata_diskon DESC;
/* 3. Produk apa saja yang memiliki rating tertinggi?*/
SELECT product_name, category, rating
FROM [AMAZON ].[dbo].[amazon$]
WHERE rating = (SELECT MAX(rating) FROM [AMAZON ].[dbo].[amazon$]);
/* 4. Produk apa saja yang memiliki rating terendah?*/
SELECT product_name, category, rating
FROM [AMAZON ].[dbo].[amazon$]
WHERE rating = (SELECT MIN(rating) FROM [AMAZON ].[dbo].[amazon$]);
/* 5. Hitung rata-rata rating untuk setiap kategori!*/
SELECT category, AVG(rating) AS rata_rata_rating
FROM [AMAZON ].[dbo].[amazon$]
GROUP BY category
ORDER BY rata_rata_rating DESC;
/* 6. Urutkan produk yang sering dibeli bersama*/
WITH ProdukTerpopuler AS (
SELECT
a.product_name AS produk_1,
b.product_name AS produk_2,
COUNT(*) AS jumlah_pembelian_bersama
FROM [AMAZON].[dbo].[amazon$] a
INNER JOIN[AMAZON].[dbo].[amazon$] b
ON a.user_id = b.user_id
AND a.product_name < b.product_name
GROUP BY a.product_name, b.product_name
)
SELECT produk_1, produk_2, jumlah_pembelian_bersama
FROM ProdukTerpopuler
ORDER BY jumlah_pembelian_bersama DESC;
/* 7. Bagaimana rata-rata rating produk bervariasi dalam rentang persentase diskon tertentu*/
SELECT CASE
       WHEN discount_percentage >= 0 AND discount_percentage < 0.1 THEN '0-9%'
       WHEN discount_percentage >= 0.1 AND discount_percentage < 0.2 THEN '10-19%'
       WHEN discount_percentage >= 0.2 AND discount_percentage < 0.3 THEN '20-29%'
       WHEN discount_percentage >= 0.3 AND discount_percentage < 0.4 THEN '30-39%'
       WHEN discount_percentage >= 0.4 AND discount_percentage < 0.5 THEN '40-49%'
       ELSE '50%+'
END AS rentang_diskon,
AVG(rating) AS rata_rata_rating
FROM [AMAZON].[dbo].[amazon$]
GROUP BY CASE
        WHEN discount_percentage >= 0 AND discount_percentage < 0.1 THEN '0-9%'
        WHEN discount_percentage >= 0.1 AND discount_percentage < 0.2 THEN '10-19%'
        WHEN discount_percentage >= 0.2 AND discount_percentage < 0.3 THEN '20-29%'
        WHEN discount_percentage >= 0.3 AND discount_percentage < 0.4 THEN '30-39%'
        WHEN discount_percentage >= 0.4 AND discount_percentage < 0.5 THEN '40-49%'
        ELSE '50%+'
    END
ORDER BY rentang_diskon;
/* 8. Berapa persentase diskon rata-rata per kategori produk?*/
SELECT category,
AVG(discount_percentage) AS rata_rata_diskon
FROM [AMAZON].[dbo].[amazon$]
GROUP BY category
ORDER BY rata_rata_diskon DESC;