SELECT *
FROM calisanlar;

SELECT *
FROM departmanlar;

SELECT *
FROM gorevler;

SELECT *
FROM izinler;

SELECT *
FROM maaslar;

SELECT *
FROM performans_degerlendirmeleri;

--görevlerin ve min max maaşların listesi
SELECT gorev_adi, min_maas, max_maas
FROM gorevler;


--Çalışanların İzin Durumları
SELECT calisan_id, izin_turu, baslangic_tarihi, bitis_tarihi
FROM izinler;

--En Yüksek Maaşa Sahip Çalışan
SELECT ad, soyad, maas
FROM calisanlar
ORDER BY maas DESC
LIMIT 1;


--Bir Departmandaki Ortalama Maaş
SELECT AVG(maas) AS ortalama_maas
FROM calisanlar
WHERE departman_id = 1;

--yıllık İzin Türüne Sahip Çalışanlar
SELECT * 
FROM izinler 
WHERE izin_turu = 'Yıllık';

--çalışanları maaş ve performans puanına göre sıralama
SELECT  c.ad,  c.soyad, c.maas, p.puan
FROM calisanlar c
JOIN  performans_degerlendirmeleri p ON c.calisan_id = p.calisan_id
ORDER BY c.maas DESC, 
         p.puan DESC;

--Çalışanların Ortalama Maaşından Yüksek Maaş Alanlar
SELECT * 
FROM calisanlar 
WHERE maas > (SELECT AVG(maas) FROM calisanlar);




