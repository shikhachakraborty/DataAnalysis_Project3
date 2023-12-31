# KPI's

# Employee Count:
select count("Employee Count") from hrdata;

# Attrition Count:
select count(Attrition) 
from hrdata
where Attrition = "Yes";

# Attrition Rate:
select count(Attrition) * 100 / (select count(Attrition) from hrdata)
from hrdata
where Attrition = "Yes";

# Active Employees:
select count(Attrition) 
from hrdata
where Attrition = "No";

# Average Age:
select sum(Age) / (select count("Employee Count") from hrdata)
from hrdata;

# Attrition by Gender:
select Gender, count(Attrition)
from hrdata
where Attrition = "Yes"
group by Gender;

# Department wise Attrition:
select department, count(Attrition)
from hrdata
where Attrition = "Yes";

# Number of Employees by Age Group:
select `CF_age band`, count("Employee Count")
from hrdata
group by `CF_age band`;

# Job Satisfaction Ratings:
select `Job Satisfaction`, count(`Employee Count`)
from hrdata
group by `Job Satisfaction`;

# Education Fieldwise Attrition:
select Education, count(Attrition)
from hrdata
where Attrition = "Yes"
group by Education
order by count(Attrition) desc;

# Attrition Rate by Gender for different Age Group:
select Gender, `CF_age band`, count(`Employee Count`)
from hrdata
where Attrition = "Yes"
group by Gender, `CF_age band`
order by Gender, `CF_age band`;



