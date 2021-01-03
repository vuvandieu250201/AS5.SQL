CREATE DATABASE AS5
GO
CREATE TABLE Customer
(
CustomerID int identity not null primary key,
CustomerName nvarchar(50),
Adress nvarchar(100),
Birthday datetime,
)
DROP TABLE Customer
--SELECT *FROM Customer
GO
CREATE TABLE TelephoneNumber
(
CustomerID int,
Telephone varchar(50),
CONSTRAINT FK_CustomerID FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
)
DROP TABLE TelephoneNumber
GO
SELECT *FROM TelephoneNumber
GO
--THEM DU LIEU CUSTOMERID
INSERT INTO Customer(CustomerName,Adress,Birthday) VALUES ('VU VAN DIEU','HAI DUONG','2-25-2001');
INSERT INTO Customer(CustomerName,Adress,Birthday) VALUES ('VU VAN LONG','HAI DUONG','10-10-1980');
INSERT INTO Customer(CustomerName,Adress,Birthday) VALUES ('VU VAN VINH','HAI PHONG','7-25-2013');
INSERT INTO Customer(CustomerName,Adress,Birthday) VALUES ('TRAN THI HANH','HAI DUONG','5-25-2009');
INSERT INTO Customer(CustomerName,Adress,Birthday) VALUES ('VU THI THANH THUY','HAI DUONG','5-25-2009');
INSERT INTO Customer(CustomerName,Adress,Birthday) VALUES ('TONG DUY KHANH','HAI DUONG','12-12-2019');
SELECT *FROM Customer
GO
INSERT INTO TelephoneNumber(CustomerID,Telephone) VALUES('1','0923088634');
INSERT INTO TelephoneNumber(CustomerID,Telephone) VALUES('2','0923353636');
INSERT INTO TelephoneNumber(CustomerID,Telephone) VALUES('2','0225252545');
INSERT INTO TelephoneNumber(CustomerID,Telephone) VALUES('3','0252525252');
INSERT INTO TelephoneNumber(CustomerID,Telephone) VALUES('4','0252524542');
INSERT INTO TelephoneNumber(CustomerID,Telephone) VALUES('2','0923088634');
INSERT INTO TelephoneNumber(CustomerID,Telephone) VALUES('1','0923425634');
GO
--LIET KE NHUNG NGUOI TRONG DANH SACH
SELECT CustomerID,CustomerName
FROM Customer
--LIET KE DANH SACH SO DIEN THOAI CO TRONG DANH BA
GO
SELECT Telephone FROM TelephoneNumber
GO
--LIET KE DANH SACH NHUNG NGUOI TRONG DANH BA THEO ALPHABET
SELECT * FROM Customer
ORDER BY CustomerName ASC
GO
--liet ke danh sach nhung  so dien thoai ten vu van dieu
SELECT tl.Telephone,ct.CustomerName
FROM TelephoneNumber tl
inner join Customer ct
ON TL.CustomerID = CT.CustomerID
WHERE CustomerName = 'VU VAN DIEU'
GO
--LIET KE DANH SACH NHUNG NGUOI CO NGAY SINH 12/9
SELECT *FROM Customer
WHERE Birthday = '12-9-2009'
go
-- tim so luong so dien thoai nhung nguoi trong danh ba
SELECT CustomerName, COUNT(*) AS 'Point' FROM TelephoneNumber,Customer
WHERE TelephoneNumber.CustomerID = Customer.CustomerID
group by CustomerName
go
SELECT CustomerID,COUNT (*) AS 'ALL' FROM Customer
WHERE DATEPART(mm,Birthday)=DATEPART(mm,getdate())
GROUP BY CustomerID
select *from Customer











