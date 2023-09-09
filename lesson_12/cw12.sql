------------- 1 -------------

SELECT player_name, state, 
       CASE state 
           WHEN 'AL' THEN 'yes'
           ELSE 'no' 
       END AS from_alabama
FROM players_all
ORDER BY state;



------------- 2 -------------

SELECT player_name, height,
       CASE 
           WHEN height > 74 THEN 'over 74'
           WHEN height BETWEEN 73 AND 74 THEN '73-74'
           WHEN height BETWEEN 70 AND 72 THEN '70-72'
           ELSE 'under 70'
       END AS height_group
FROM players_all;



------------- 3 -------------

SELECT *, 
       CASE 
           WHEN year IN ('JP', 'SR') 
           THEN split_part(player_name, ' ', 1)
       END AS first_name
FROM players_all;



------------- 4 -------------

SELECT CASE 
           WHEN state IN ('CA', 'OR', 'WA') THEN 'West Coast'
           WHEN state = 'AL' THEN 'Alabama'
           ELSE 'Other'
       END AS arbitrary_regional_designation,
       COUNT(player_name)
FROM players_all
WHERE weight >= 300
GROUP BY arbitrary_regional_designation;



------------- 5 -------------

SELECT SUM(CASE WHEN year IN ('FR', 'SO') THEN weight ELSE 0 END) AS fr_so,
       SUM(CASE WHEN year IN ('JR', 'SR') THEN weight ELSE 0 END) AS jr_sr
FROM players_all
WHERE state = 'AL';



------------- 6 -------------

SELECT state,
       COUNT(CASE WHEN year = 'FR' THEN 1 END) AS fr,
       COUNT(CASE WHEN year = 'SO' THEN 1 END) AS so,
       COUNT(CASE WHEN year = 'JR' THEN 1 END) AS jr,
       COUNT(CASE WHEN year = 'SR' THEN 1 END) AS sr,
       COUNT(*) AS all_state
FROM players_all
GROUP BY state
ORDER BY all_state DESC;



------------- 7 -------------

SELECT 
    CASE 
        WHEN player_name ~ '^[A-Ma-m]' THEN 'A-M'
        WHEN player_name ~ '^[N-Zn-z]' THEN 'N-Z'
    END AS player_name_group,
    COUNT(*)
FROM players_all
WHERE player_name ~ '^[A-Za-z]'
GROUP BY player_name_group;
	


------------- 8 -------------

SELECT COUNT(CASE WHEN state = 'AK' THEN player_name ELSE NULL END) AS alaska,
       COUNT(CASE WHEN state = 'AZ' THEN player_name ELSE NULL END) AS arizona,
       COUNT(CASE WHEN state = 'AL' THEN player_name ELSE NULL END) AS alabama
FROM players_all;
