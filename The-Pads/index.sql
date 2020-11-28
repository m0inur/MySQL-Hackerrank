/*
Enter your query here.
*/

(SELECT CONCAT(Name, "(", LEFT(Occupation, 1), ")") FROM OCCUPATIONS ORDER BY Name LIMIT 0, 18446744073709551615)
UNION
(SELECT CONCAT("There are a total of ", COUNT(Occupation), " ", LOWER(Occupation), "s.") FROM OCCUPATIONS GROUP BY Occupation ORDER BY COUNT(Occupation) LIMIT 0, 18446744073709551615) 