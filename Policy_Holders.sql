Create DATABASE Insurance_DB;
USE Insurance_DB;

CREATE TABLE Policy_Holders(
    Policy_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50),
    Age INT,
    City VARCHAR(30),
    Policy_Type VARCHAR(30)
);

INSERT INTO Policy_Holders VALUES
(101,'Amit Sharma',32,'Mumbai','Health'),
(102,'Priya Mehta',28,'Pune','Motor'),
(103,'Rahul Verma',41,'Delhi','Travel'),
(104,'Sneha Patil',35,'Nagpur','Health'),
(105,'Rohan Joshi',45,'Bengaluru','Life'),
(106,'Neha Singh',30,'Hyderabad','Motor'),
(107,'Karan Gupta',38,'Jaipur','Travel'),
(108,'Pooja Kulkarni',27,'Pune','Health'),
(109,'Vikas Nair',50,'Kochi','Life'),
(110,'Anjali Desai',33,'Ahmedabad','Motor');

INSERT INTO Policy_Holders
VALUES
(301,'Amit Sharma',31,'Pune','Health'),
(302,'Sneha Joshi',27,'Nagpur','Motor');


select * from Policy_Holders