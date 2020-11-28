
(SELECT Name, Grade, Marks FROM Students, Grades WHERE Marks >= Min_Mark AND Marks <= Max_Mark AND Grade IN (SELECT Grade FROM Grades WHERE Marks >= Min_Mark AND Marks <= Max_Mark) AND grade >= 8 ORDER BY Name LIMIT 0, 18446744073709551615)

UNION ALL 

(SELECT CONCAT("NULL"), Grade, Marks FROM Students, Grades WHERE Marks >= Min_Mark AND Marks <= Max_Mark AND grade < 8 ORDER BY Grade DESC LIMIT 0, 18446744073709551615)