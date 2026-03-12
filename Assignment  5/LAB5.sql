Q.1->

SQL>  SELECT s.Student_ID, s.Name, e.Course_ID FROM Students s
  2   INNER JOIN Enrollment e
  3  ON s.Student_ID = e.Student_ID;

STUDENT_ID NAME                  COURSE_ID
---------- -------------------- ----------
       201 Priyanka Kumari            1001
       202 Priyanshu Kumari           1002
       203 Priyank Kumar              1003
       204 Priya Kumari               1004
       205 Puja Kumari                1005
       206 Sarita Kumari              1006
       207 Divya Kumari               1007
       208 Laxmi Kumari               1008
       209 Viniti Kumari              1009
       210 Kumar                      1010

10 rows selected.

Q.2->


SQL> SELECT s.Name , e.Semester
  2  FROM Students s
  3   INNER JOIN Enrollment e
  4  ON s.Student_ID = e.Student_ID;

NAME                 SEMESTER
-------------------- --------------------
Priyanka Kumari      5th
Priyanshu Kumari     5th
Priyank Kumar        5th
Priya Kumari         4th
Puja Kumari          6th
Sarita Kumari        3th
Divya Kumari         2th
Laxmi Kumari         5th
Viniti Kumari        6th
Kumar                5th

10 rows selected.


Q.3->

SQL> SELECT s.Name , e.Grade
  2   FROM Students s
  3   INNER JOIN Enrollment e
  4  ON s.Student_ID = e.Student_ID;

NAME                 GRADE
-------------------- -----
Priyanka Kumari      A
Priyanshu Kumari     A+
Priyank Kumar        A
Priya Kumari         A++
Puja Kumari          B
Sarita Kumari        B+
Divya Kumari         C
Laxmi Kumari         A
Viniti Kumari        A+
Kumar                A++

10 rows selected.


Q.4->

SQL> SELECT c.Course_Name, c.Credits,
  2   f. Name
  3  FROM Course c
  4   INNER JOIN Faculty f
  5   ON c.Faculty_ID = f.Faculty_ID;

COURSE_NAME                  CREDITS NAME
------------------------- ---------- --------------------
Science                            4 Kunal Kumar
CPP                                5 Murlidhar Prasad Sin
Surveying                          4 Akhilesh Kumar
EGD                                3 Arun Kumar
OOPs                               7 Sujeet Kumar
DBMS                               6 Nishikant Singh
ML                                 4 Sakila Kumari
AI                                 5 Manisha Kumari
Computer Network                   3 Raushan Kumar
Computer Science                   3 Pankaj Singh

10 rows selected.


Q.5->

SQL>  SELECT c.Course_Name
  2   FROM Course c
  3   INNER JOIN Faculty f
  4   ON c.Faculty_ID = f.Faculty_ID
  5   WHERE f.Faculty_ID = 6;

COURSE_NAME
-------------------------
DBMS


Q.6->

SQL>  SELECT f.Name, f.Designation,
  2   c.Course_Name
  3   FROM Faculty f
  4   INNER JOIN Course c
  5   ON f.Faculty_ID = c.Faculty_ID;

NAME                 DESIGNATION                                        COURSE_NAME
-------------------- -------------------------------------------------- -------------------------
Kunal Kumar          Professor                                          Science
Murlidhar Prasad Sin Professor                                          CPP
Akhilesh Kumar       Professor                                          Surveying
Arun Kumar           Faculty                                            EGD
Sujeet Kumar         Professor                                          OOPs
Nishikant Singh      Professor                                          DBMS
Sakila Kumari        Professor                                          ML
Manisha Kumari       Professor                                          AI
Raushan Kumar        Faculty                                            Computer Network
Pankaj Singh         Professor                                          Computer Science

10 rows selected.


Q.7->

SQL> SELECT s.Name, c.Course_Name
  2  FROM Students s
  3  INNER JOIN Enrollment e
  4  ON s.Student_ID = e.Student_ID
  5  INNER JOIN Course c
  6  ON e.Course_ID = c.Course_ID;

NAME                 COURSE_NAME
-------------------- -------------------------
Priyanka Kumari      Science
Priyanshu Kumari     CPP
Priyank Kumar        Surveying
Priya Kumari         EGD
Puja Kumari          OOPs
Sarita Kumari        DBMS
Divya Kumari         ML
Laxmi Kumari         AI
Viniti Kumari        Computer Network
Kumar                Computer Science

10 rows selected.


Q.8->

SQL> SELECT s.Name , c.Course_Name, e.Semester
  2   FROM Students s
  3  INNER JOIN Enrollment e
  4   ON s.Student_ID = e.Student_ID
  5   INNER JOIN Course c
  6   ON e.Course_ID = c.Course_ID;

NAME                 COURSE_NAME               SEMESTER
-------------------- ------------------------- --------------------
Priyanka Kumari      Science                   5th
Priyanshu Kumari     CPP                       5th
Priyank Kumar        Surveying                 5th
Priya Kumari         EGD                       4th
Puja Kumari          OOPs                      6th
Sarita Kumari        DBMS                      3th
Divya Kumari         ML                        2th
Laxmi Kumari         AI                        5th
Viniti Kumari        Computer Network          6th
Kumar                Computer Science          5th

10 rows selected.


Q.9->

SQL>  SELECT s.Name , c.Course_Name, e.Grade
  2   FROM Students s
  3   INNER JOIN Enrollment e
  4   ON s.Student_ID = e.Student_ID
  5  INNER JOIN Course c
  6   ON e.Course_ID = c.Course_ID
  7   WHERE e.Semester = '5th' ;

NAME                 COURSE_NAME               GRADE
-------------------- ------------------------- -----
Priyanka Kumari      Science                   A
Priyanshu Kumari     CPP                       A+
Priyank Kumar        Surveying                 A
Laxmi Kumari         AI                        A
Kumar                Computer Science          A++


Q.10->

SQL>  SELECT c.Course_Name
  2  FROM Course c
  3   INNER JOIN Enrollment e
  4   ON c.Course_ID = e.Course_ID
  5   WHERE e.Student_ID = 201;

COURSE_NAME
-------------------------
Science


Q.11->

SQL> SELECT s.Name, s.Department_ID,
  2  c.course_Name
  3  FROM Students s
  4  INNER JOIN Enrollment e
  5  ON s.Student_ID = e.Student_ID
  6  INNER JOIN Course c
  7  ON e.Course_ID = c.Course_ID;

NAME                 DEPARTMENT_ID COURSE_NAME
-------------------- ------------- -------------------------
Priyanka Kumari                101 Science
Priyanshu Kumari               102 CPP
Priyank Kumar                  103 Surveying
Priya Kumari                   104 EGD
Puja Kumari                    105 OOPs
Sarita Kumari                  106 DBMS
Divya Kumari                   107 ML
Laxmi Kumari                   108 AI
Viniti Kumari                  109 Computer Network
Kumar                          110 Computer Science

10 rows selected.


Q.12->

SQL>  SELECT d.Department_Name , c.Course_Name
  2  FROM Department d
  3   INNER JOIN Course c
  4   ON d.Department_ID = c.Department_ID;

DEPARTMENT_NAME                  COURSE_NAME
-------------------------------- --------------------------------
Computer Science                 Science
Computer Science and Engineering CPP
Civil Engineering                Surveying
Mechanical Engineering           EGD
Civil With Computer Application  OOPs
Electronics Engineering          DBMS
Electronics Engineering          ML
Artificial Intelligence          AI
Data Science Engineering         Computer Network
Animation And Graphics Engineeri Computer Science

10 rows selected.


Q.13->

SQL> SELECT f.Name, d.Department_Name
  2   FROM Faculty f
  3   INNER JOIN Department d
  4   ON f.Department_ID = d.Department_ID;

NAME                 DEPARTMENT_NAME
-------------------- --------------------------------
Kunal Kumar          Computer Science
Murlidhar Prasad Sin Computer Science and Engineering
Akhilesh Kumar       Civil Engineering
Arun Kumar           Mechanical Engineering
Sujeet Kumar         Civil With Computer Application
Nishikant Singh      Electrical Engineering
Sakila Kumari        Electronics Engineering
Manisha Kumari       Artificial Intelligence
Raushan Kumar        Data Science Engineering
Pankaj Singh         Animation And Graphics Engineeri

10 rows selected.


Q.14->

SQL>  SELECT s.Name , c.Course_Name
  2   FROM Students s
  3   INNER JOIN Enrollment e
  4   ON s.Student_ID = e.Student_ID
  5   INNER JOIN Course c
  6   ON e.Course_ID = c.Course_ID
  7  WHERE s.Department_ID = 104;

NAME                 COURSE_NAME
-------------------- --------------------------------
Priya Kumari         EGD


Q.15->

SQL> SELECT s.Name , c.Course_Name
  2  FROM Students s
  3   INNER JOIN Enrollment  e
  4   ON s.Student_ID = e.Student_ID
  5  INNER JOIN Course c
  6   ON e.Course_ID = c.Course_ID
  7   ORDER BY s.Name ASC;

NAME                 COURSE_NAME
-------------------- --------------------------------
Divya Kumari         ML
Kumar                Computer Science
Laxmi Kumari         AI
Priya Kumari         EGD
Priyank Kumar        Surveying
Priyanka Kumari      Science
Priyanshu Kumari     CPP
Puja Kumari          OOPs
Sarita Kumari        DBMS
Viniti Kumari        Computer Network

10 rows selected.


Q.16->

SQL> SELECT f.Name , c.Course_Name
  2  FROM Faculty f
  3  INNER JOIN Course c
  4  ON f.Faculty_ID = c.Faculty_ID
  5  ORDER BY c.Credits DESC;

NAME                 COURSE_NAME
-------------------- --------------------------------
Sujeet Kumar         OOPs
Nishikant Singh      DBMS
Manisha Kumari       AI
Murlidhar Prasad Sin CPP
Akhilesh Kumar       Surveying
Kunal Kumar          Science
Sakila Kumari        ML
Arun Kumar           EGD
Pankaj Singh         Computer Science
Raushan Kumar        Computer Network

10 rows selected.


Q.17->

SQL> SELECT c.Course_Name, COUNT(e.Student_ID)
  2  AS TotalStudents
  3  FROM Course c
  4  INNER JOIN Enrollment e
  5  ON c.Course_ID = e.Course_ID
  6  GROUP BY c.Course_Name;

COURSE_NAME                      TOTALSTUDENTS
-------------------------------- -------------
CPP                                          1
DBMS                                         1
Surveying                                    1
Computer Network                             1
ML                                           1
OOPs                                         1
EGD                                          1
Science                                      1
AI                                           1
Computer Science                             1

10 rows selected.


Q.18->

SQL> SELECT f.Name, COUNT(c.Course_ID)
  2  AS TotalCourses
  3  FROM Faculty f
  4  INNER JOIN Course c
  5  ON f.Faculty_ID = c.Faculty_ID
  6  GROUP BY f.Name;

NAME                 TOTALCOURSES
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


Q.19->

SQL> SELECT d.Department_Name,
  2  COUNT(s.Student_ID) AS TotalStudents
  3  FROM Department d
  4  INNER JOIN Students s
  5  ON d.Department_ID = s.Department_ID
  6  GROUP BY d.Department_Name;

DEPARTMENT_NAME                  TOTALSTUDENTS
-------------------------------- -------------
Civil Engineering                            1
Mechanical Engineering                       1
Civil With Computer Application              1
Data Science Engineering                     1
Electronics Engineering                      1
Animation And Graphics Engineeri             1
Electrical Engineering                       1
Artificial Intelligence                      1
Computer Science                             1
Computer Science and Engineering             1

10 rows selected.


Q.20->

SQL>  SELECT Semester , COUNT(Grade) AS
  2  TotalGrades
  3   FROM Enrollment
  4   GROUP BY Semester;

SEMESTER             TOTALGRADES
-------------------- -----------
4th                            1
3th                            1
5th                            5
6th                            2
2th                            1



