USE olympics;

-- 1. Which countries have the highest total medal count across all Olympic Games 

SELECT 
    c.Country,
    COUNT(*) AS Total_Medals
FROM athlete_events ae
JOIN countries c ON ae.NOC = c.NOC
WHERE ae.Medal IS NOT NULL
GROUP BY c.Country
ORDER BY Total_Medals DESC
LIMIT 10;

-- 2. What are the average physical characteristics of athletes who win medals in each sport?

SELECT 
    e.Sport,
    ROUND(AVG(ae.Age), 1) AS Avg_Age,
    ROUND(AVG(ae.Height), 1) AS Avg_Height,
    ROUND(AVG(ae.Weight), 1) AS Avg_Weight
FROM athlete_events ae
JOIN events e ON ae.Event_ID = e.Event_ID
WHERE ae.Medal IS NOT NULL
GROUP BY e.Sport
ORDER BY Avg_Age;

-- 3. How did the ratio of male and female athletes change over time?

SELECT 
    Year,
    SUM(CASE WHEN a.Sex = 'M' THEN 1 ELSE 0 END) AS Male_Athletes,
    SUM(CASE WHEN a.Sex = 'F' THEN 1 ELSE 0 END) AS Female_Athletes
FROM athlete_events ae
JOIN athletes a ON ae.Athlete_ID = a.Athlete_ID
GROUP BY Year
ORDER BY Year;

-- 4. What percentage of a country’s total athlete participations resulted in medals?

SELECT 
    c.Country,
    COUNT(CASE WHEN ae.Medal IS NOT NULL THEN 1 END) AS Total_Medals,
    COUNT(*) AS Total_Participations,
    ROUND(100.0 * COUNT(CASE WHEN ae.Medal IS NOT NULL THEN 1 END) / COUNT(*), 2) AS Medal_Conversion_Rate
FROM athlete_events ae
JOIN countries c ON ae.NOC = c.NOC
GROUP BY c.Country
HAVING COUNT(*) > 100
ORDER BY Medal_Conversion_Rate DESC
LIMIT 10;

-- 5. Who are the top athletes by total number of medals won?

SELECT 
    a.Name,
    c.Country,
    COUNT(ae.Medal) AS Total_Medals
FROM athlete_events ae
JOIN athletes a ON ae.Athlete_ID = a.Athlete_ID
JOIN countries c ON ae.NOC = c.NOC
WHERE ae.Medal IS NOT NULL
GROUP BY a.Name, c.Country
ORDER BY Total_Medals DESC
LIMIT 10;

-- 6. How has medal distribution evolved across continents over time?

SELECT 
    FLOOR(ae.Year / 10) * 10 AS Decade,
    c.Country,
    COUNT(ae.Medal) AS Total_Medals
FROM athlete_events ae
JOIN countries c ON ae.NOC = c.NOC
WHERE ae.Medal IS NOT NULL
GROUP BY Decade, c.Country
ORDER BY Decade, Total_Medals DESC;

-- 7. Which sports have the widest distribution of medal-winning countries?

SELECT 
    e.Sport,
    COUNT(DISTINCT ae.NOC) AS Distinct_Countries
FROM athlete_events ae
JOIN events e ON ae.Event_ID = e.Event_ID
WHERE ae.Medal IS NOT NULL
GROUP BY e.Sport
ORDER BY Distinct_Countries DESC
LIMIT 10;





