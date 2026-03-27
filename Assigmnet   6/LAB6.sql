SQL> SELECT COUNT(*) AS Total_Students FROM Students;

TOTAL_STUDENTS
--------------
            10

SQL> SELECT COUNT(*) AS Total_Faculty FROM Faculty;

TOTAL_FACULTY
-------------
           10

SQL> SELECT COUNT(*) AS Total_Courses FROM  Course;

TOTAL_COURSES
-------------
           10

SQL> SELECT MAX(Credits) AS Max_Credits FROM Course;

MAX_CREDITS
-----------
          7

SQL> SELECT MIN(Credits) AS Min_Credits FROM Course;

MIN_CREDITS
-----------
          3

SQL> SELECT Department_ID , COUNT(*) AS
  2  Student_Count
  3  FROM Students
  4  GROUP BY Department_ID;

DEPARTMENT_ID STUDENT_COUNT
------------- -------------
          107             1
          108             1
          105             1
          109             1
          110             1
          104             1
          101             1
          103             1
          102             1
          106             1

10 rows selected.

SQL> SELECT Department_ID , COUNT(*) AS
  2  Faculty_Count
  3  FROM Faculty
  4  GROUP BY Department_ID;

DEPARTMENT_ID FACULTY_COUNT
------------- -------------
          107             1
          108             1
          105             1
          109             1
          110             1
          104             1
          101             1
          103             1
          102             1
          106             1

10 rows selected.

SQL> SELECT Department_ID, COUNT(*) AS
  2  Course_Count
  3  FROM Course
  4  GROUP BY Department_ID;

DEPARTMENT_ID COURSE_COUNT
------------- ------------
          107            2
          108            1
          105            1
          109            1
          110            1
          104            1
          101            1
          103            1
          102            1

9 rows selected.


SQL> SELECT Semester , COUNT(*) AS
  2  Enrollment_Count
  3  FROM Enrollment
  4  GROUP BY Semester;

SEMESTER             ENROLLMENT_COUNT
-------------------- ----------------
4th                                 1
3th                                 1
5th                                 5
6th                                 2
2th                                 1


SQL>  SELECT Grade , COUNT(*) AS
  2  Student_Count
  3  FROM Enrollment
  4  GROUP BY Grade;

GRADE STUDENT_COUNT
----- -------------
B                 1
C                 1
B+                1
A                 3
A+                2
A++               2


SQL> SELECT Semester, COUNT(*) AS
  2  Enrollment_Count
  3  FROM Enrollment
  4  GROUP BY Semester
  5  HAVING COUNT(*) >2;

SEMESTER             ENROLLMENT_COUNT
-------------------- ----------------
5th                                 5

SQL>  SELECT Department_ID, COUNT(*) AS
  2  Total_Students
  3   FROM Students
  4   GROUP BY Department_ID
  5   HAVING COUNT(*) <2;

DEPARTMENT_ID TOTAL_STUDENTS
------------- --------------
          107              1
          108              1
          105              1
          109              1
          110              1
          104              1
          101              1
          103              1
          102              1
          106              1

10 rows selected.



SQL> SELECT Grade, COUNT(*) AS
  2  Count_Students
  3  FROM Enrollment
  4  GROUP BY Grade
  5  HAVING COUNT(*) >1;

GRADE COUNT_STUDENTS
----- --------------
A                  3
A+                 2
A++                2



SQL>  SELECT Department_ID, COUNT(*) AS
  2   Course_Count
  3  FROM Course
  4  GROUP BY Department_ID
  5   HAVING COUNT(*) >1;

DEPARTMENT_ID COURSE_COUNT
------------- ------------
          107            2



SQL> SELECT Course_ID, COUNT(Student_ID) AS Student_Count
  2  FROM Enrollment
  3   GROUP BY Course_ID;

 COURSE_ID STUDENT_COUNT
---------- -------------
      1007             1
      1004             1
      1009             1
      1008             1
      1006             1
      1010             1
      1001             1
      1002             1
      1005             1
      1003             1

10 rows selected.

SQL>  SELECT c.Course_Name, COUNT(e.Student_ID) AS Student_Count
  2   FROM Course c
  3   JOIN Enrollment e ON c.Course_ID = e.Course_ID
  4   GROUP BY c.Course_Name;

COURSE_NAME               STUDENT_COUNT
------------------------- -------------
CPP                                   1
DBMS                                  1
Surveying                             1
Computer Network                      1
ML                                    1
OOPs                                  1
EGD                                   1
Science                               1
AI                                    1
Computer Science                      1

10 rows selected.

SQL> SELECT Department_ID, COUNT(*) AS Student_Count
  2  FROM Students
  3  GROUP BY Department_ID;

DEPARTMENT_ID STUDENT_COUNT
------------- -------------
          107             1
          108             1
          105             1
          109             1
          110             1
          104             1
          101             1
          103             1
          102             1
          106             1

10 rows selected.


SQL>  SELECT f.Name, COUNT(c.Course_ID) AS Course_Count
  2   FROM Faculty f
  3  JOIN Course c ON f.Faculty_ID = c.Faculty_ID
  4   GROUP BY f.Name;

NAME                 COURSE_COUNT
-------------------- ------------
Murlidhar Prasad Sin            1
gh

Arun Kumar                      1
Raushan Kumar                   1
Pankaj Singh                    1
Nishikant Singh                 1
Kunal Kumar                     1
Akhilesh Kumar                  1
Sujeet Kumar                    1
Sakila Kumari                   1

NAME                 COURSE_COUNT
-------------------- ------------
Manisha Kumari                  1

10 rows selected.

SQL> SELECT f.Name, COUNT(c.Course_ID) AS Course_Count
  2  FROM Faculty f
  3  JOIN Course c ON f.Faculty_ID = c.Faculty_ID
  4   GROUP BY f.Name;

NAME                 COURSE_COUNT
-------------------- ------------
Murlidhar Prasad Sin            1
Arun Kumar                      1
Raushan Kumar                   1
Pankaj Singh                    1
Nishikant Singh                 1
Kunal Kumar                     1
Akhilesh Kumar                  1
Sujeet Kumar                    1
Sakila Kumari                   1
Manisha Kumari                  1

10 rows selected.

SQL> SELECT c.Course_Name, MAX(e.Grade) AS Max_Grade
  2  FROM Course c
  3  JOIN Enrollment e ON c.Course_ID = e.Course_ID
  4  GROUP BY c.Course_Name;

COURSE_NAME               MAX_G
------------------------- -----
CPP                       A+
DBMS                      B+
Surveying                 A
Computer Network          A+
ML                        C
OOPs                      B
EGD                       A++
Science                   A
AI                        A
Computer Science          A++

10 rows selected.

SQL> SELECT Department_ID, COUNT(*) AS Total_Courses
  2  FROM Course
  3  GROUP BY Department_ID;

DEPARTMENT_ID TOTAL_COURSES
------------- -------------
          107             2
          108             1
          105             1
          109             1
          110             1
          104             1
          101             1
          103             1
          102             1

9 rows selected.


SQL> SELECT Semester, COUNT(DISTINCT Student_ID) AS Total_Students
  2  FROM Enrollment
  3  GROUP BY Semester;

SEMESTER             TOTAL_STUDENTS
-------------------- --------------
4th                               1
3th                               1
5th                               5
6th                               2
2th                               1


SQL>  SELECT Course_ID, COUNT(Student_ID) AS Student_Count
  2   FROM Enrollment
  3   GROUP BY Course_ID
  4   HAVING COUNT(Student_ID) <2;

 COURSE_ID STUDENT_COUNT
---------- -------------
      1007             1
      1004             1
      1009             1
      1008             1
      1006             1
      1010             1
      1001             1
      1002             1
      1005             1
      1003             1

10 rows selected.