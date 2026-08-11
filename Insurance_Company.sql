USE Insurance_DB;
CREATE TABLE Insurance_Company (
    Policy_ID INT,
    Company_Name VARCHAR(50),
    Premium DECIMAL(10,2),
    Policy_Status VARCHAR(20)
);
INSERT INTO Insurance_Company VALUES
(101,'ICICI Lombard',18500,'Active'),
(102,'HDFC ERGO',14500,'Expired'),
(103,'TATA AIG',9500,'Active'),
(104,'Niva Bupa',22000,'Active'),
(105,'LIC',55000,'Lapsed'),
(106,'Bajaj Allianz',17000,'Active'),
(107,'Care Health',8900,'Expired'),
(108,'Star Health',19500,'Active'),
(109,'LIC',67000,'Active'),
(110,'Reliance General',15800,'Active');

select * from Insurance_Company;
