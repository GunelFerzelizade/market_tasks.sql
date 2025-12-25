# market_tasks.sql
## 📂 Məlumat Bazası Cədvəlləri
# Layihədə istifadə olunan əsas cədvəllər:
# - **mehsul** — Məhsul məlumatları  
# - **musteri** — Müştəri məlumatları 
# - **sales** — Satış əməliyyatları  
# Hər bir cədvəl haqqında tam struktur `SHOW TABLES` və `DESCRIBE` sorğuları ilə göstərilmişdir.
# 📌 Proyektin Məqsədi
# Bu layihə real biznes analitikası üçün lazım olan SQL bacarıqlarını inkişaf etdirmək məqsədi daşıyır:
# A/B müqayisələr / Gəlir təhlili / Müştəri performansı / Seqmentləşdirmə / Bonus sisteminin optimallaşdırılması

📊 Supermarket Sales Analysis – SQL Project
📖 Layihə Təsviri (Project Description)

Bu layihə supermarket satış məlumatlarının MySQL vasitəsilə analizini əhatə edir.
Əsas məqsəd satışlar, müştərilər və məhsullar arasında əlaqələri istifadə edərək gəlir analizi aparmaq, performansı ölçmək və data əsaslı qərar dəstəyi yaratmaqdır.

Layihə çərçivəsində seqmentlər, müştərilər, məhsul kateqoriyaları və çatdırılma formaları üzrə gəlir hesablanmış, eyni zamanda müştəri davranışına əsaslanan bonus strategiyası təklif edilmişdir. Analizlər real biznes ssenarilərinə uyğun qurulmuşdur.

🧾 İcra Olunan Tapşırıqlar
Bu layihə üzrə aşağıdakı analitik SQL tapşırıqları icra edilmişdir:
Satış seqmentləri (Home Office, Consumer, Corporate) üzrə ümumi gəlirin hesablanması.
Ən çox istifadə edilən çatdırılma formasının müəyyən edilməsi.
Sifariş sayına əsasən ən aktiv müştərinin tapılması.
Ümumi gəlirə görə ən yüksək dəyər yaradan müştərinin müəyyən edilməsi.
Məhsul kateqoriyaları üzrə ən çox gəlir gətirən kateqoriyanın tapılması.
Müəyyən bir müştəri (“Seymur Mahmudlu”) üzrə əldə edilən ümumi gəlirin hesablanması.
Müştərilərin alış-veriş həcmi və gəlir göstəricilərinə əsasən bonus dəyişiklikləri üçün təklif mexanizminin qurulması (CASE statement).

🛠 İstifadə Olunan SQL Yanaşmaları
JOIN (sales – musteri – mehsul)
GROUP BY
Aqreqat funksiyalar (SUM, COUNT)
ORDER BY və LIMIT
CASE statement ilə biznes qaydalarının modelləşdirilməsi

📂 Fayl Strukturu
supermarket-sales-analysis
├── README.md
└── supermarket_sales_analysis.sql

🎯 Layihənin Praktik Dəyəri

Bu layihə:
Satış məlumatlarının strukturlaşdırılmış analizini
Müştəri dəyərinin ölçülməsini
Bonus və kampaniya strategiyalarının data əsaslı qurulmasını praktik şəkildə nümayiş etdirir.

👩‍💻 Müəllif
Gunel Fərzəlizadə
📧 Email: gunelferzelizade@gmail.com
🔗 LinkedIn: https://www.linkedin.com/in/g%C3%BCnel-f%C9%99rz%C9%99lizad%C9%99-7a6377228

🔹 Tövsiyə (GitHub üçün)
SQL kodunu: supermarket_sales_analysis.sql
README-ni: bu mətnlə
Repo adı:
👉 supermarket-sales-analysis-sql
