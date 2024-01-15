use healthcare;
select * from dialysis_1;
select * from dialysis_2;
Describe Dialysis_1;


select 
d.ProviderNumber,
d.facilityname,
dd.CMSCertificationNo

FROM dialysis_1 d Inner Join Dialysis_2 dd
On d.ProviderNumber = dd.CMSCertificationNo;




 ALTER TABLE dialysis_1 RENAME COLUMN `Infection _category_text` TO Infection_category_text;
 
 





select
sum(NPCR_summary) as Total_Patients_NPCR_Summary,
sum(survival_summary) as  Total_Patients_survival_Summary,
sum(Hospitalization_summary) as  Total_Patients_Hospitalization_Summary,
sum(Fistula_summary) as  Total_Patients_Fistula_Summary,
sum(Transfusion_summary) as  Total_Patients_Transfusion_Summary,
sum(Hypercalcemia_summary) as Total_Patients_Hypercalcemia_Summary,
sum(Serum_phosphorus_summary) as  Total_Patients_Serum_Phosphorus_Summary,
sum(Long_term_catheter_summary) as  Total_Patients_Long_term_catheter_Summary
 from dialysis_1;
 
 ##KPI 2 
 
 select 
 Profit_n_nonprofit,
 count(profit_n_nonprofit)
 from dialysis_1

 group by profit_n_nonprofit;
 
 
 
 
 
 
 select *from dialysis_1;
 
 ##KPI 3
 
 select
 a.chainorganization,
 count(b.TotalPerformancescore) count_No_score
 from dialysis_1 as a
 join dialysis_2 as b on a.providernumber = b.cmscertificationno
 where TotalPerformanceScore = 'No score'
 group by
 a.ChainOrganization order by sum(b.TotalPerformancescore)desc;
 
 
 ##KPI 4
 
 Select
state,
 count(No_of_Dialysis_stations) as No_of_Dialysis_stations
 from dialysis_1
 group by state;
 
 
##KPI 5

Select
Transfusioncategorytext as Transfusion_Category,
count(Transfusioncategorytext)
from dialysis_1
where Transfusioncategorytext = 'As Expected'

union

select Hospitalization_category_text as Hospitalization_category,
count(Hospitalization_category_text)
from dialysis_1
where Hospitalization_category_text = 'As Expected'

union

select Readmission_Category as Readmission_Category,
count(Readmission_Category)
from dialysis_1
where Readmission_Category = 'As Expected'

union

select Survival_Category_Text as Survival_Category,
count(Survival_Category_Text)
from dialysis_1
where Survival_Category_Text = 'As Expected'

union

select Infection_category_text as Infection_category,
count(Infection_category_text)
from dialysis_1
where Infection_category_text = 'As Expected'

Union

select Fistula_Category_Text as Fistula_Category,
count(Fistula_Category_Text)
from dialysis_1
where Fistula_Category_Text = 'As Expected'

union

select SWR_category_text as SWR_category,
count(SWR_category_text)
from dialysis_1
where SWR_category_text = 'As Expected'

union

select PPPW_category_text as PPPW_category,
count(PPPW_category_text)
from dialysis_1
where PPPW_category_text = 'As Expected';

## KPI 6

SELECT 
round(avg(PaymentReductionPercentage),5) as Avg_Reduction_Rate from Dialysis_2;


select * from dialysis_1;





