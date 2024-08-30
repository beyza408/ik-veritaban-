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


