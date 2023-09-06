------------- 1 -------------

SELECT *
FROM salesman
WHERE name ~ '^[A-Z]';



------------- 2 -------------

SELECT *
FROM salesman
WHERE name ~ '^[a-zA-Z]{4} [A-Za-z]+$';



------------- 3 -------------

SELECT *
FROM salesman
WHERE name ~ '^J[a-zA-Z]*h [A-Za-z]+$'



------------- 4 -------------

SELECT upper(name)
FROM salesman;



------------- 5 -------------

SELECT '#' || substring(name from 2)
FROM salesman;



------------- 6 -------------

SELECT regexp_replace(name, '^([A-Za-z]+)[A-Za-z] ([A-Za-z]+)$', '\1! \2')
FROM salesman;
