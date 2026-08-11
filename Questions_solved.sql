USE Insurance_DB;
select t1.Customer_Name,t2.Broker_Name from Policy_Holders t1
join Broker_Details t2
on t1.Policy_ID=t2.Policy_ID;

select ph.Customer_Name,ic.Company_Name from Policy_Holders ph
join Insurance_Company ic
on ph.Policy_ID=ic.Policy_id;

select ph.Customer_Name,bd.Broker_Name,ic.Company_Name from Policy_HOlders ph
join Broker_Details bd
on ph.Policy_ID=bd.Policy_ID
join Insurance_Company ic
on ph.Policy_ID=ic.Policy_ID;

select ph.Customer_Name,ic.Policy_Status from Policy_Holders ph
join Insurance_Company ic
on ph.Policy_ID=ic.Policy_ID
where Policy_Status='Active';

Select * from Policy_Holders where Policy_Type='Motor';

select ph.Customer_Name,bd.Broker_Name,ic.Company_Name,ph.Policy_Type from Policy_Holders ph 
join Broker_Details bd
on ph.Policy_ID=bd.Policy_ID
join Insurance_Company ic
on ph.Policy_ID=ic.Policy_ID
where ph.Policy_Type='Health';

select ph.*,bd.Broker_Name,ic.Company_Name from Policy_Holders ph
join Broker_Details bd
on ph.Policy_ID=bd.Policy_ID
join Insurance_Company ic
on ph.Policy_ID=ic.Policy_ID
where bd.Broker_Name='Marsh India';

select ph.Customer_Name,ic.Company_Name,ic.Premium from Policy_Holders ph
join Insurance_Company ic 
on ph.policy_ID=ic.Policy_ID 
where ic.Premium >20000;

Select ph.Customer_Name,ph.Policy_Type,ic.Company_Name,ic.Premium,ic.Policy_Status,bd.Broker_Name from Policy_Holders ph 
join Insurance_Company ic 
on ph.Policy_ID = ic.Policy_ID
join Broker_Details bd
on ph.Policy_ID=bd.Policy_ID
where ic.Policy_Status='Active' and bd.Broker_Name='PolicyBazaar';

select ph.Customer_Name,bd.Broker_Name,ic.Company_Name,ic.Premium from Policy_Holders ph
join Insurance_Company ic
on ph.Policy_ID=ic.Policy_ID
join Broker_Details bd
on ph.Policy_ID=bd.Policy_ID
where ph.City='Pune';


select Broker_Name,count(*) as Number_Of_Polices from Broker_Details 
Group by Broker_Name;

Select bd.Broker_Name,sum(ic.Premium) as Total_Premium from Broker_Details bd
join Insurance_Company ic
on bd.Policy_ID=ic.Policy_ID
group by Broker_Name;

select ph.Policy_Type,avg(ic.Premium) as Average_Premium from Policy_Holders ph 
join Insurance_Company ic
on ph.Policy_ID=ic.Policy_ID
group by ph.Policy_Type;

SELECT ph.Customer_Name,
       ic.Company_Name,
       ic.Premium
FROM Policy_Holders ph
JOIN Insurance_Company ic
ON ph.Policy_ID = ic.Policy_ID
WHERE ic.Premium = (
    SELECT MAX(Premium)
    FROM Insurance_Company
);

Select bd.Broker_Name,Max(ic.Premium) from Broker_Details bd
join Insurance_Company ic
on bd.Policy_ID=ic.Policy_ID
group by Broker_Name;

Select Broker_Name,Premium from Broker_Details bd
join Insurance_Company ic
on bd.Policy_ID=ic.Policy_ID
where Premium =(select Max(Premium) from Insurance_Company);

Select Company_Name,Avg(Premium) as Average_Premium 
from Insurance_Company Broker_Details
group by Company_Name 
Having Average_premium > 20000;

select Broker_Name,count(*) as Number_of_Policy from Broker_Details 
group by Broker_Name having Count(Broker_Name)>2;

select bd.Broker_Name,sum(ic.Premium) as Total_Premium from Broker_details bd
join Insurance_Company ic
on bd.Policy_ID=ic.Policy_ID
group by Broker_Name 
Having sum(ic.Premium) >50000;

select ph.City, sum(ic.Premium) as Total_Premium 
from Policy_Holders ph
join Insurance_Company ic
on ph.Policy_ID = ic.Policy_ID
group by ph.City 
having sum(ic.Premium) > 50000;

select bd.Broker_Name,
count(*) as Policies_Sold,
Sum(ic.Premium) as Total_Premium,
Avg(ic.Premium) as Average_Premium,
Max(ic.Premium) as Highest_Premium 
from Broker_Details bd
join Insurance_Company ic
on bd.Policy_ID = ic.Policy_ID
group by Broker_Name ;

