 Q.1

SQL> SELECT Student_ID AS Roll_No,
  2   Name AS Student_Name,
  3   Gender AS Gender,
  4   Date_of_Birth AS DOB,
  5   Contact_Number AS Phone_Number,
  6    Department_ID AS Dept_ID
  7   FROM Students;


   ROLL_NO STUDENT_NAME         GENDER     DOB       PHONE_NUMBER       DEPT_ID
---------- -------------------- ---------- --------- --------------- ----------
       201 Priyanka Kumari      Female     12-OCT-05 9876543210             101
       202 Priyanshu Kumari     Female     01-OCT-05 9876543200             102
       203 Priyank Kumar        male       13-OCT-05 9876543211             103
       204 Priya Kumari         Female     14-OCT-05 9875543210             104
       205 Puja Kumari          Female     15-OCT-05 9876573210             105
       206 Sarita Kumari        Female     16-OCT-05 9876543710             106
       207 Divya Kumari         Female     17-OCT-05 9876549210             107
       208 Laxmi Kumari         Female     18-OCT-05 9876548210             108
       209 Viniti Kumari        Female     19-OCT-05 9876573210             109
       210 Kumar                Male       22-OCT-05 9776543210             110

10 rows selected.

Q.2

SQL> SELECT
  2  Student_ID AS Roll_No,
  3  Name AS Student_Name,
  4  Department_ID AS Dept_ID
  5  FROM Students;

   ROLL_NO STUDENT_NAME            DEPT_ID
---------- -------------------- ----------
       201 Priyanka Kumari             101
       202 Priyanshu Kumari            102
       203 Priyank Kumar               103
       204 Priya Kumari                104
       205 Puja Kumari                 105
       206 Sarita Kumari               106
       207 Divya Kumari                107
       208 Laxmi Kumari                108
       209 Viniti Kumari               109
       210 Kumar                       110

10 rows selected.

Q.3

SQL> SELECT
  2  Faculty_ID AS FacultyID,
  3   Name AS Faculty_Name,
  4   Designation AS Job_Title,
  5   Email AS Email_Address
  6   FROM Faculty;

 FACULTYID FACULTY_NAME              JOB_TITLE   EMAIL_ADDRESS
---------- ------------------------- ----------- ------------------------------
         1 Kunal Kumar               Professor   kunal@college.com
         2 Murlidhar Prasad Singh    Professor   murlidhar@college.com
         3 Akhilesh Kumar            Professor   akhileshbpmce@college.com
         4 Arun Kumar                Faculty     arunbpmce@college.com
         5 Sujeet Kumar              Professor   sujeetbpmce@college.com
         6 Nishikant Singh           Professor   nishikant@college.com
         7 Sakila Kumari             Professor   sakila@college.com
         8 Manisha Kumari            Professor   manishabpmce@college.com
         9 Raushan Kumar             Faculty     raushanbpmce@college.com
        10 Pankaj Singh              Professor   pankajbpmce@college.com

10 rows selected.

Q.4

SQL> SELECT
  2  Course_ID AS CourseID,
  3   Course_Name AS CourseName,
  4   Credits AS Total_Credits
  5   FROM Course;

  COURSEID COURSENAME            TOTAL_CREDITS
---------- --------------------- -------------
      1001 Science                           4
      1002 CPP                               5
      1003 Surveying                         4
      1004 EGD                               3
      1005 OOPs                              7
      1006 DBMS                              6
      1007 ML                                4
      1008 AI                                5
      1009 Computer Network                  3
      1010 Computer Science                  3

10 rows selected.

Q.5

SQL> SELECT
  2  Enrollment_ID AS EnrollmentID,
  3  Student_ID AS StudentID,
  4  Course_ID AS CourseID,
  5  Semester AS Sem,
  6  Grade AS Final_Grade
  7  FROM Enrollment;

ENROLLMENTID  STUDENTID   COURSEID SEM                  FINAL
------------ ---------- ---------- -------------------- -----
       23701        201       1001 5th                  A
       23702        202       1002 5th                  A+
       23703        203       1003 5th                  A
       23704        204       1004 4th                  A++
       23705        205       1005 6th                  B
       23706        206       1006 3th                  B+
       23707        207       1007 2th                  C
       23708        208       1008 5th                  A
       23709        209       1009 6th                  A+
       23710        210       1010 5th                  A++

10 rows selected.

Q.6

SQL> SELECT *
  2  FROM Students WHERE Department_ID = 102;

STUDENT_ID NAME
---------- ---------------------------------------------------------------------
       202 Priyanshu Kumari

Q.7

SQL> SELECT * FROM Students  WHERE Gender = 'Female';

STUDENT_ID NAME
---------- ---------------------------------------------------------------------
       201 Priyanka Kumari
       202 Priyanshu Kumari
       204 Priya Kumari
       205 Puja Kumari
       206 Sarita Kumari
       207 Divya Kumari
       208 Laxmi Kumari
       209 Viniti Kumari

8 rows selected.

Q.8

SQL>  SELECT * FROM Faculty WHERE Designation = 'Professor';

FACULTY_ID NAME
---------- ---------------------------------------------------------------------
         1 Kunal Kumar
         2 Murlidhar Prasad Singh
         3 Akhilesh Kumar
         5 Sujeet Kumar
         6 Nishikant Singh
         7 Sakila Kumari
         8 Manisha Kumari
        10 Pankaj Singh

8 rows selected.

Q.9

SQL>  SELECT * FROM Faculty WHERE Department_ID = 102;

FACULTY_ID NAME
---------- ---------------------------------------------------------------------
         2 Murlidhar Prasad Singh

Q.10

SQL> SELECT * FROM Course WHERE Credits >= 4;

 COURSE_ID COURSE_NAME
---------- ---------------------------------------------------------------------
      1001 Science
      1002 CPP
      1003 Surveying
      1005 OOPs
      1006 DBMS
      1007 ML
      1008 AI

7 rows selected.

Q.11

SQL>  SELECT * FROM Students WHERE Date_of_Birth > TO_Date('01-01-2003','DD-MM-YYYY');

STUDENT_ID NAME
---------- ---------------------------------------------------------------------
       201 Priyanka Kumari
       202 Priyanshu Kumari
       203 Priyank Kumar
       204 Priya Kumari
       205 Puja Kumari
       206 Sarita Kumari
       207 Divya Kumari
       208 Laxmi Kumari
       209 Viniti Kumari
       210 Kumar

10 rows selected.

Q.12

SQL>  SELECT * FROM Enrollment WHERE Semester = '4th';

ENROLLMENT_ID STUDENT_ID  COURSE_ID SEMESTER             GRADE
------------- ---------- ---------- -------------------- -----
        23704        204       1004 4th                  A++

Q.13

SQL> SELECT * FROM Students ORDER BY Name ASC;

STUDENT_ID NAME
---------- ---------------------------------------------------------------------
       207 Divya Kumari
       210 Kumar
       208 Laxmi Kumari
       204 Priya Kumari
       203 Priyank Kumar
       201 Priyanka Kumari
       202 Priyanshu Kumari
       205 Puja Kumari
       206 Sarita Kumari
       209 Viniti Kumari

10 rows selected.

Q.14

SQL> SELECT * FROM Students ORDER BY Date_of_Birth DESC;

STUDENT_ID NAME
---------- ---------------------------------------------------------------------
       210 Kumar
       209 Viniti Kumari
       208 Laxmi Kumari
       207 Divya Kumari
       206 Sarita Kumari
       205 Puja Kumari
       204 Priya Kumari
       203 Priyank Kumar
       201 Priyanka Kumari
       202 Priyanshu Kumari

10 rows selected.

Q.15

SQL> SELECT * FROM Faculty ORDER BY Designation ASC;

FACULTY_ID NAME
---------- ---------------------------------------------------------------------
         9 Raushan Kumar
         4 Arun Kumar
         3 Akhilesh Kumar
        10 Pankaj Singh
         6 Nishikant Singh
         7 Sakila Kumari
         8 Manisha Kumari
         2 Murlidhar Prasad Singh
         1 Kunal Kumar
         5 Sujeet Kumar

10 rows selected.

Q.16

SQL> SELECT * FROM Course ORDER BY Credits DESC;

 COURSE_ID COURSE_NAME
---------- ---------------------------------------------------------------------
      1005 OOPs
      1006 DBMS
      1008 AI
      1002 CPP
      1003 Surveying
      1001 Science
      1007 ML
      1004 EGD
      1010 Computer Science
      1009 Computer Network

10 rows selected.

Q.17

SQL> SELECT * FROM Students WHERE ROWNUM <=3;

STUDENT_ID NAME
---------- ---------------------------------------------------------------------
       201 Priyanka Kumari
       202 Priyanshu Kumari
       203 Priyank Kumar

Q.18

SQL> SELECT * FROM  Course WHERE ROWNUM <=5;

 COURSE_ID COURSE_NAME
---------- ---------------------------------------------------------------------
      1001 Science
      1002 CPP
      1003 Surveying
      1004 EGD
      1005 OOPs

Q.19

SQL> SELECT
  2  Name,
  3  TRUNC(MONTHS_BETWEEN(SYSDATE,Date_of_Birth)/12)AS Age
  4  FROM Students;

NAME                     AGE
----------------- ----------
Priyanka Kumari           20
Priyanshu Kumari          20
Priyank Kumar             20
Priya Kumari              20
Puja Kumari               20
Sarita Kumari             20
Divya Kumari              20
Laxmi Kumari              20
Viniti Kumari             20
Kumar                     20

10 rows selected.

Q.20

SQL> SELECT
  2  Course_Name,
  3    Credits + 1 AS Updated_Credits
  4  FROM Course;

COURSE_NAME                    UPDATED_CREDITS
------------------------------ ---------------
Science                                      5
CPP                                          6
Surveying                                    5
EGD                                          4
OOPs                                         8
DBMS                                         7
ML                                           5
AI                                           6
Computer Network                             4
Computer Science                             4

10 rows selected.

Q.21

SQL> SELECT
  2  Enrollment_ID,
  3  Student_ID,
  4  Course_ID,
  5  Semester,
  6  Grade AS Final_Grade
  7  FROM Enrollment;

ENROLLMENT_ID STUDENT_ID  COURSE_ID SEMESTER             FINAL
------------- ---------- ---------- -------------------- -----
        23701        201       1001 5th                  A
        23702        202       1002 5th                  A+
        23703        203       1003 5th                  A
        23704        204       1004 4th                  A++
        23705        205       1005 6th                  B
        23706        206       1006 3th                  B+
        23707        207       1007 2th                  C
        23708        208       1008 5th                  A
        23709        209       1009 6th                  A+
        23710        210       1010 5th                  A++

10 rows selected.

Q.22

SQL> SELECT
  2  Name,
  3  EXTRACT(YEAR FROM Date_of_Birth) AS Birth_Year
  4  FROM Students;

NAME              BIRTH_YEAR
----------------- ----------
Priyanka Kumari         2005
Priyanshu Kumari        2005
Priyank Kumar           2005
Priya Kumari            2005
Puja Kumari             2005
Sarita Kumari           2005
Divya Kumari            2005
Laxmi Kumari            2005
Viniti Kumari           2005
Kumar                   2005

10 rows selected.

Q.23

SQL> SELECT
  2  Name,
  3   SUBSTR(Email, INSTR(Email, '@') + 1) AS
  4   Email_Domain
  5  FROM Faculty;

NAME              EMAIL_DOMAIN
----------------- -----------------------------------
Kunal Kumar       college.com
Murlidhar Prasad  college.com
Singh

Akhilesh Kumar    college.com
Arun Kumar        college.com
Sujeet Kumar      college.com
Nishikant Singh   college.com
Sakila Kumari     college.com
Manisha Kumari    college.com
Raushan Kumar     college.com

NAME              EMAIL_DOMAIN
----------------- -----------------------------------
Pankaj Singh      college.com

10 rows selected.