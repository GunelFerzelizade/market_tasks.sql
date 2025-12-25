-- ================================
-- SUPERMARKET SALES ANALYSIS TASKS
-- ================================

SHOW TABLES;
DESCRIBE mehsul;
DESCRIBE musteri;
DESCRIBE sales;

---------------------------------------------------------
-- TASK 1
-- Seqmentlər üzrə gəlir (Home Office, Consumer, Corporate)
---------------------------------------------------------
SELECT 
    sales.Seqment,
    SUM(sales.Mehsul_qiymet * sales.Miqdar * (1 - musteri.Bonus)) AS Gelir
FROM sales
JOIN musteri ON sales.Musteri_id = musteri.musteri_id
GROUP BY sales.Seqment;

---------------------------------------------------------
-- TASK 2
-- Ən çox istifadə edilən çatdırılma forması
---------------------------------------------------------
SELECT 
    sales.Catdirilma_formasi,
    COUNT(*) AS catdirilma_sayi
FROM sales
GROUP BY sales.Catdirilma_formasi
ORDER BY catdirilma_sayi DESC
LIMIT 1;

---------------------------------------------------------
-- TASK 3
-- Ən çox alış-veriş etmiş müştəri (sifariş sayı)
---------------------------------------------------------
SELECT 
    musteri.musteri_id,
    musteri.musteri_ad,
    COUNT(sales.sifaris_id) AS sifaris_say
FROM sales
JOIN musteri ON musteri.musteri_id = sales.musteri_id
GROUP BY musteri.musteri_id, musteri.musteri_ad
ORDER BY sifaris_say DESC
LIMIT 1;

---------------------------------------------------------
-- TASK 4
-- Ən çox gəlir gətirən müştəri
---------------------------------------------------------
SELECT 
    musteri.musteri_id,
    musteri.musteri_ad,
    SUM(sales.mehsul_qiymet * sales.miqdar * (1 - musteri.Bonus)) AS umumi_gelir
FROM sales
JOIN musteri ON musteri.musteri_id = sales.musteri_id
GROUP BY musteri.musteri_id, musteri.musteri_ad
ORDER BY umumi_gelir DESC
LIMIT 1;

---------------------------------------------------------
-- TASK 5
-- Ən çox gəlir gətirən kateqoriya
---------------------------------------------------------
SELECT 
    mehsul.kateqoriya,
    SUM(sales.mehsul_qiymet * sales.miqdar * (1 - musteri.Bonus)) AS umumi_gelir
FROM sales
JOIN musteri ON musteri.musteri_id = sales.musteri_id
JOIN mehsul ON sales.mehsul_id = mehsul.id
GROUP BY mehsul.kateqoriya
ORDER BY umumi_gelir DESC
LIMIT 1;

---------------------------------------------------------
-- TASK 6
-- "Seymur Mahmudlu" adlı müştərinin gəliri
---------------------------------------------------------
SELECT 
    musteri.musteri_ad,
    SUM(sales.Mehsul_qiymet * sales.Miqdar * (1 - musteri.Bonus)) AS gelir
FROM sales
JOIN musteri ON sales.Musteri_id = musteri.Musteri_id
WHERE musteri.musteri_ad = 'Seymur Mahmudlu'
GROUP BY musteri.musteri_ad;

---------------------------------------------------------
-- TASK 7
-- Gəlir və alış-veriş sayına əsasən bonus dəyişikliyi təklifi
---------------------------------------------------------
SELECT 
    musteri.musteri_id,
    musteri.musteri_ad,
    COUNT(sales.sifaris_id) AS alis_sayi,
    SUM(sales.Mehsul_qiymet * sales.Miqdar * (1 - musteri.Bonus)) AS umumi_gelir,

    CASE
        WHEN SUM(sales.Mehsul_qiymet * sales.Miqdar * (1 - musteri.Bonus)) > 3000
             AND COUNT(sales.sifaris_id) > 15 THEN 'Bonus +5% artırılsın'
             
        WHEN SUM(sales.Mehsul_qiymet * sales.Miqdar * (1 - musteri.Bonus)) BETWEEN 1500 AND 3000
             AND COUNT(sales.sifaris_id) BETWEEN 8 AND 15 THEN 'Bonus +2% artırılsın'
             
        WHEN SUM(sales.Mehsul_qiymet * sales.Miqdar * (1 - musteri.Bonus)) < 1500
             OR COUNT(sales.sifaris_id) < 5 THEN 'Bonus azaldılsın (–2%)'

        ELSE 'Bonus dəyişməsin'
    END AS Bonus_Teklifi

FROM sales
JOIN musteri ON musteri.musteri_id = sales.musteri_id
GROUP BY musteri.musteri_id, musteri.musteri_ad;
