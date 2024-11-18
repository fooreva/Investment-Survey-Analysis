select * from investment_survey;
--delete null value
delete * from investment_survey where investment_per_month = 0;
-- no of investors
select count(*) from investment_survey;
-- no of investors gender wise
select gender,count(gender) from investment_survey group by gender;
--no of investors age category-wise
select age_category,count(age_category) from investment_survey group by age_category;
-- count of working to non-working professionals
select working_professional,count(working_professional) as count_of_employment_status 
from investment_survey group by working_professional;
--verifying if some non-working prof has annual income
select * from investment_survey where working_professional= 'No' and not annual_income = 0; 
--most recurring mostivational cause
select motivation_cause,count(motivation_cause) from investment_survey group by motivation_cause 
order by count(motivation_cause) desc; 
--correcting of inconsistency
update investment_survey set motivation_cause ='Self' where motivation_cause ='Self ';
-- most recurring resources used
select resources_used,count(resources_used) from investment_survey group by resources_used order by
count(resources_used) desc;
--most ocurring resources used age_category-wise
select age_category,resources_used,count(resources_used) from investment_survey
group by age_category,resources_used order by count(resources_used) desc;
--average savings and duration for working professiong
select avg(total_savings)as average_savings,avg(duration_to_save_in_years)as average_duration from 
investment_survey where working_professional ='Yes'; 
--average savings and duration for NWP
select avg(total_savings)as average_savings,avg(duration_to_save_in_years)as average_duration from 
investment_survey where working_professional ='No'; 
--checking for correlation abetween resources used and motivation cause
select motivation_cause,resources_used,count(resources_used) from investment_survey group by
motivation_cause,resources_used order by count(resources_used) desc;
--goal of investment for adult
select age_category,goal_for_investment,count(goal_for_investment) from investment_survey where age_category = 'Adult'
group by age_category,goal_for_investment order by count(goal_for_investment) desc;
--goal of investment for young adult
select age_category,goal_for_investment,count(goal_for_investment) from investment_survey where age_category = 'Young Adult'
group by age_category,goal_for_investment order by count(goal_for_investment) desc;