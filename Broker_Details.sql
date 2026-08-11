USE Insurance_DB;
CREATE TABLE Broker_Details (
    Policy_ID INT,
    Broker_Name VARCHAR(50),
    Broker_Code VARCHAR(10),
    Commission_Percentage DECIMAL(4,2)
);
INSERT INTO Broker_Details VALUES
(101,'Marsh India','BR101',12.5),
(102,'Willis Towers Watson','BR102',10.0),
(103,'Aon India','BR103',11.5),
(104,'Marsh India','BR101',12.5),
(105,'PolicyBazaar','BR104',8.5),
(106,'Coverfox','BR105',9.0),
(107,'Aon India','BR103',11.5),
(108,'PolicyBazaar','BR104',8.5),
(109,'Marsh India','BR101',12.5),
(110,'Coverfox','BR105',9.0);
select * from Broker_Details;
