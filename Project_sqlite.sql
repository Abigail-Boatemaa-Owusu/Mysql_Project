--How the Data looks like.Top200RichestPersonintheWorldTop200RichestPersonintheWorld2
select *
FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2;

--1. Retrieve the 20 richest billionaires.
    SELECT name,age,
	networth_billion,
	rank
    FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2
    ORDER by networth_billion DESC
    LIMIT 20;

--2. Identify the five youngest billionaires.
    SELECT name,
	networth_billion,
	rank,
    age
    FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2
    ORDER by age asc
    LIMIT 5;
    
--3. Calculate the average age and average net worth.
SELECT avg (networth_billion) as Average_networth_of_Billionaires
FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2;

SELECT avg (age) as Average_age_of_Billionaires
FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2;

--4. Identify the five most represented countries.
SELECT country,
COUNT (*) as Five_most_represented_countries
FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2
GROUP BY country
order by Five_most_represented_countries DESC
limit 5;

--5. Calculate the combined net worth of billionaires from each country.
SELECT country,
sum (networth_billion) as Sum_of_billionaires_Networth_By_country
FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2
GROUP BY country
order by networth_billion DESC;

--6. Identify the five industries with the highest number of billionaires.
SELECT industry,
COUNT (networth_billion) as Industries_with_Highest_No_of_billionaire
FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2
GROUP BY industry
order by networth_billion DESC
Limit 5;

--7. Find countries with at least five billionaires.
SELECT country,
count (*) as Number_of_billionaire
FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2
GROUP BY 1
HAVING COUNT(*) >=5
order by 2 DESC;

--8. Calculate the total wealth of billionaires younger than 50.
SELECT 
sum(networth_billion) as  Total_wealth_of_billionaires_youngerthan_50
FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2
WHERE age <50;
--9. Identify billionaires whose net worth exceeds the overall average net worth.
SELECT *
FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2
WHERE networth_billion > (
    SELECT AVG(networth_billion)
    FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2
);

--10.Identify the industry with the highest average net worth.
SELECT industry,
avg(networth_billion) as Highest_Avg_Networth
FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2
GROUP BY industry
order by Highest_Avg_Networth DESC
limit 1;

--11. Which industry has the wealthiest billionaire?
 SELECT industry,
max(networth_billion) Wealthiest_Billionare
FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2
GROUP BY 1
order by 2 DESC LIMIT 1;
 
--12. Which country has the highest combined billionaire wealth?
SELECT country,
sum(networth_billion) AS Highest_combined_networth
FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2
GROUP BY 1
order by 2 DESC LIMIT 1;

--13. Which country has the highest average billionaire net worth?
SELECT country,
sum(networth_billion) AS Highest_combined_networth
FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2
GROUP BY 1
order by 2 DESC LIMIT 1;

--14. Which industries have at least 10 billionaires?
SELECT industry,
COUNT(*) AS Least_10_billionaire
FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2
GROUP BY 1
HAVING COUNT(*) >=10
order by 2 DESC;

--15. How many billionaires have a net worth above $50 billion?
SELECT COUNT(*) AS number_of_billionaires
FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2
WHERE networth_billion > 50;

--16. What percentage of the dataset is made up of billionaires younger than 50?
SELECT   (COUNT(CASE WHEN age < 50 THEN 1 END) * 100.0 / COUNT(*))
    AS percentage_under_50
FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2;

--17. Who has a net worth between $50 billion and $100 billion?

SELECT COUNT(*) AS number_of_billionaires
FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2
WHERE networth_billion BETWEEN 50 AND 100;

--18. Which country has the highest number of billionaires below age 40?
SELECT country,
       COUNT(*) AS number_of_billionaires_lessthan40
FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2
WHERE age < 40
GROUP BY country
ORDER BY number_of_billionaires_lessthan40 DESC
LIMIT 1;

--19. Which industry contributes the most to the combined wealth of the top 200?
SELECT industry,
SUM(networth_billion) AS total_industry_wealth
FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2
GROUP BY industry
ORDER BY total_industry_wealth DESC
LIMIT 1;

--20. What is the difference between the richest and poorest billionaire in the dataset?
SELECT
    MAX(networth_billion) AS richest_networth,
    MIN(networth_billion) AS poorest_networth,
    MAX(networth_billion) - MIN(networth_billion) AS wealth_difference
FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2;

--21. What is the average net worth of billionaires aged above 70?
SELECT
    AVG(networth_billion) AS average_networth_above70
FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2
WHERE age > 70;

--22. Which billionaires belong to industries with more than 10 representatives?
SELECT industry,
COUNT(*) AS Least_10_billionaire
FROM Top200RichestPersonintheWorldTop200RichestPersonintheWorld2
GROUP BY 1
HAVING COUNT(*) >=10
order by 2 DESC;

