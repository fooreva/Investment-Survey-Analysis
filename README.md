# Investment Survey Analysis

## Table of content 
- [Project Overview](#project-overview)
- [Data Sources](#data-sources)
- [Tools](#tools)
- [Data Preparation](#data-preparation)
- [Exploratory Data Analysis (EDA)](exploratory-data-analysis-(eda))
- [Data Analysis](#data-analysis)
- [Findings](#findings)
- [Recommendations](#recommendations)
- [Limitations](#limitations)

### Project Overview

The main goal of this analysis is to extract more information on investors and the specifics of their investments, which will help investment firms make better decisions about their policies and strategies for luring investors to their business.

![dashboard](https://github.com/user-attachments/assets/eadcfe09-ce00-4887-ae2d-8ed6239242cf)


### Data Sources

Investment survey data: the primary data used for this analysis is the “investment_survey data.csv” containing detailed information on investment of individuals

### Tools

- Excel – exploring, cleaning  the data
- PostgreSQL – cleaning, testing, and analyzing the data
- Mokup AI – designing the wireframe/mockup of the dashboard
- PowerBi – designing the dashboard
  
### Data Preparation

1.	Data loading and exploration
2.	Handling missing values
3.	Data cleaning and formatting
   
### Exploratory Data Analysis (EDA)

This involves the exploring of survey data to answer key questions such as:
- What age group is investing most?
- What is the number of investors gender wise?
- What is the percentage of working to non-working professionals?
- What is the most effective or occurring motivational cause to investing?
- Does resources used to know about the investment influences the individual decision to invest?

### Data Analysis

Codes---------------------------------
```Sql
--delete null value
delete * from investment_survey where investment_per_month = 0;
--correcting of inconsistency
update investment_survey set motivation_cause ='Self' where motivation_cause ='Self ';
--checking for correlation abetween resources used and motivation cause
select motivation_cause,resources_used,count(resources_used) from investment_survey group by
motivation_cause,resources_used order by count(resources_used) desc;

```

### Findings

1.	Younger adult  (age 18-29) engage more in investing than adult(30 above)
2.	There are more male investors when compared to female.
3.	The proportion of working professionals is larger than that of non-working professionals, with 59% of the population being working professionals and 41% being non-working professionals. 
4.	According to the analysis of the most effective motivational factors by age category,Family members, agents/investment brokers, banks, and social media are the most motivating factors for adults, while family,friends,and social media rank top among young adults.
5.	From the results there is indeed some sort of linear relationship between both.This means this likelihood of the resources used to know about the investment being a friend, the likelihood of the motivational cause being a friend also.
   
### Recommendations
Based on the analysis we recommend the following:
- 	The percentage of young adult(18-29) to adult(>30) shows or proves the younger generation has so much drive for success such as wealth generation,personal savings, financial freedom which is the most occurring goal for investment as per the analysis and can be used as  factor in convincing or encouraging youngsters to invest whereas also educating adults what they stand to gain.
- Investment companies should channel more energy to the female gender thereby encouraging and educating them on what they stand to gain as women too also has lot to offer.
- It should be noted that not being a working professional doesn’t limit one from investing, not having a monthly income doesn’t mean one cannot invest so equal energy should be channeled to non-working prof as do working professionals
- Since there is linear relationship between resources used in knowing about the investment and the drive in participating in the investment, companies should bank on an effective and reliable means on carrying out brand promotions such as:
  - The use of reputable social personalities that could be of great influence to the masses
  -  Hiring of efficient investment brokers that has great inter-personal and communication skills.
  - Publishing of articles relating to the investment and its benefits.

In conclusion the more people are convinced and can testify about an investment and its benefits, the more people they convinced to join.
  
### Limitations

I had to exempt the null values in the investment per month column as they would have affected the accuracy of my conclusions from the analysis, also had to correct some spelling error and inconsistencies s they would have given to contrasting result.

