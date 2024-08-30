-- Departmanlar Tablosu
CREATE TABLE Departmanlar (
    DepartmanID SERIAL PRIMARY KEY,
    DepartmanAdi VARCHAR(100) NOT NULL,
    YoneticID INT,
    FOREIGN KEY (YoneticID) 
);

-- Çalışanlar Tablosu
CREATE TABLE Calisanlar (
    CalisanID SERIAL PRIMARY KEY,
    Ad VARCHAR(50) NOT NULL,
    Soyad VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    TelefonNumarasi VARCHAR(15),
    IseGirisTarihi DATE,
    GorevID INT,
    Maas DECIMAL(10, 2),
    YoneticID INT,
    DepartmanID INT,
    FOREIGN KEY (GorevID) ,
    FOREIGN KEY (YoneticID) ,
    FOREIGN KEY (DepartmanID) 
);

-- Performans Değerlendirmeleri Tablosu
CREATE TABLE PerformansDegerlendirmeleri (
    DegerlendirmeID SERIAL PRIMARY KEY,
    CalisanID INT,
    DegerlendirmeTarihi DATE,
    Puan DECIMAL(3, 2),
    Yorumlar TEXT,
    FOREIGN KEY (CalisanID) 
);

-- Görevler Tablosu
CREATE TABLE Gorevler (
    GorevID SERIAL PRIMARY KEY,
    GorevAdi VARCHAR(100),
    MinMaas DECIMAL(10, 2),
    MaxMaas DECIMAL(10, 2)
);

-- Maaşlar Tablosu
CREATE TABLE Maaslar (
    MaasID SERIAL PRIMARY KEY,
    CalisanID INT,
    Maas DECIMAL(10, 2),
    BaslangicTarihi DATE,
    BitisTarihi DATE,
    FOREIGN KEY (CalisanID) 
);

-- İzinler Tablosu
CREATE TABLE Izinler (
    IzinID SERIAL PRIMARY KEY,
    CalisanID INT,
    IzinTuru VARCHAR(50),
    BaslangicTarihi DATE,
    BitisTarihi DATE,
    FOREIGN KEY (CalisanID) 
);

INSERT INTO Departmanlar (DepartmanAdi, YoneticID) VALUES
('Yazılım', 1),
('Pazarlama', 2),
('Finans', 3),
('İK', 4),
('Müşteri Hizmetleri', 5);


INSERT INTO Calisanlar (Ad, Soyad, Email, TelefonNumarasi, IseGirisTarihi, GorevID, Maas, YoneticID, DepartmanID) VALUES
('Ali', 'Yılmaz', 'ali.yilmaz@example.com', '1234567890', '2023-01-15', 1, 5000.00, 1, 1),
('Ayşe', 'Demir', 'ayse.demir@example.com', '1234567891', '2022-05-10', 2, 4500.00, 2, 2),
('Mehmet', 'Kara', 'mehmet.kara@example.com', '1234567892', '2021-03-22', 3, 6000.00, 3, 3),
('Fatma', 'Kaya', 'fatma.kaya@example.com', '1234567893', '2024-02-20', 4, 5500.00, 4, 4),
('Elif', 'Çelik', 'elif.celik@example.com', '1234567894', '2023-06-11', 5, 4700.00, 5, 5);



INSERT INTO PerformansDegerlendirmeleri (CalisanID, DegerlendirmeTarihi, Puan, Yorumlar) VALUES
(1, '2024-07-01', 4.5, 'Başarılı bir performans sergiledi.'),
(2, '2024-07-02', 4.0, 'İyi bir iş çıkardı, bazı alanlarda gelişim göstermeli.'),
(3, '2024-07-03', 4.8, 'Mükemmel bir performans gösterdi.'),
(4, '2024-07-04', 3.9, 'Ortalamanın üzerinde bir performans.'),
(5, '2024-07-05', 4.2, 'Genel olarak iyi bir performans sergiledi.');


INSERT INTO Gorevler (GorevAdi, MinMaas, MaxMaas) VALUES
('Yazılım Mühendisi', 4000.00, 7000.00),
('Pazarlama Müdürü', 3500.00, 6500.00),
('Finans Analisti', 5000.00, 8000.00),
('İK Uzmanı', 3000.00, 5500.00),
('Müşteri Temsilcisi', 2500.00, 5000.00);


INSERT INTO Maaslar (CalisanID, Maas, BaslangicTarihi, BitisTarihi) VALUES
(1, 5000.00, '2023-01-15', NULL),
(2, 4500.00, '2022-05-10', NULL),
(3, 6000.00, '2021-03-22', NULL),
(4, 5500.00, '2024-02-20', NULL),
(5, 4700.00, '2023-06-11', NULL);


INSERT INTO Izinler (CalisanID, IzinTuru, BaslangicTarihi, BitisTarihi) VALUES
(1, 'Yıllık', '2024-08-01', '2024-08-10'),
(2, 'Hastalık', '2024-08-12', '2024-08-15'),
(3, 'Yıllık', '2024-09-01', '2024-09-05'),
(4, 'Hastalık', '2024-08-20', '2024-08-25'),
(5, 'Yıllık', '2024-07-15', '2024-07-20');

