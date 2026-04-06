Q1->

SQL> SELECT Name
  2  FROM Students
  3  WHERE Department_ID = (
  4  SELECT Department_ID
  5  FROM Students
  6  WHERE Student_ID = '204'
  7  );

NAME
-------------
Priya Kumari

Q2->

SQL> SELECT Name
  2  FROM Students
  3  WHERE Gender = (
  4  SELECT Gender
  5  FROM Students
  6  WHERE Student_ID  =  '202'
  7  );

NAME
-----------------
Priyanka Kumari
Priyanshu Kumari
Priya Kumari
Puja Kumari
Sarita Kumari
Divya Kumari
Laxmi Kumari
Viniti Kumari



Q3->

SQL>  SELECT Name
  2  FROM Students
  3   WHERE Department_ID = (
  4   SELECT Department_ID
  5   FROM Students
  6   WHERE Student_ID  =  203
  7  );

NAME
------------------
Priyank Kumar

Q4->

SQL> SELECT *
  2  FROM Students
  3  WHERE Department_ID IN (
  4  SELECT Department_ID
  5  FROM Students
  6  WHERE Gender = 'Female'
  7  );

STUDENT_ID NAME               DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
---------- ------------------ --------- ---------- --------------- -------------
       201 Priyanka Kumari    12-OCT-05 Female     9876543210       101
       202 Priyanshu Kumari   01-OCT-05 Female     9876543200       102
       204 Priya Kumari       14-OCT-05 Female     9875543210       104
       205 Puja Kumari        15-OCT-05 Female     9876573210       105
       206 Sarita Kumari      16-OCT-05 Female     9876543710       106
       207 Divya Kumari       17-OCT-05 Female     9876549210       107
       208 Laxmi Kumari       18-OCT-05 Female     9876548210       108
       209 Viniti Kumari      19-OCT-05 Female     9876573210       109



Q5->

SQL> SELECT *
  2  FROM Students
  3  WHERE Student_ID IN (
  4  SELECT Student_ID
  5  FROM Enrollment
  6  );

STUDENT_ID NAME               DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
---------- ------------------ --------- ---------- --------------- -------------
       201 Priyanka Kumari    12-OCT-05 Female     9876543210       101
       202 Priyanshu Kumari   01-OCT-05 Female     9876543200       102
       203 Priyank Kumar      13-OCT-05 male       9876543211       103
       204 Priya Kumari       14-OCT-05 Female     9875543210       104
       205 Puja Kumari        15-OCT-05 Female     9876573210       105
       206 Sarita Kumari      16-OCT-05 Female     9876543710       106
       207 Divya Kumari       17-OCT-05 Female     9876549210       107
       208 Laxmi Kumari       18-OCT-05 Female     9876548210       108
       209 Viniti Kumari      19-OCT-05 Female     9876573210       109
       210 Kumar              22-OCT-05 Male       9776543210       110



Q6->


SQL>  SELECT *
  2   FROM Students
  3   WHERE Student_ID IN (
  4   SELECT Student_ID
  5   FROM Enrollment
  6  );

STUDENT_ID NAME              DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
---------- ----------------- --------- ---------- --------------- -------------
       201 Priyanka Kumari   12-OCT-05 Female     9876543210                101
       202 Priyanshu Kumari  01-OCT-05 Female     9876543200                102
       203 Priyank Kumar     13-OCT-05 male       9876543211                103
       204 Priya Kumari      14-OCT-05 Female     9875543210                104
       205 Puja Kumari       15-OCT-05 Female     9876573210                105
       206 Sarita Kumari     16-OCT-05 Female     9876543710                106
       207 Divya Kumari      17-OCT-05 Female     9876549210                107
       208 Laxmi Kumari      18-OCT-05 Female     9876548210                108
       209 Viniti Kumari     19-OCT-05 Female     9876573210                109
       210 Kumar             22-OCT-05 Male       9776543210                110

Q7->


SQL>  SELECT *
  2  FROM Course
  3   WHERE Credits > (
  4   SELECT AVG(Credits)
  5  FROM Course
  6  );

 COURSE_ID COURSE_NAME             CREDITS DEPARTMENT_ID FACULTY_ID
---------- -------------------- ---------- ------------- ----------
      1002 CPP                           5           102         2
      1005 OOPs                          7           105         5
      1006 DBMS                          6           107         6
      1008 AI                            5           108         8

Q8->


SQL> SELECT *
  2  FROM Students
  3  WHERE Student_ID > (
  4  SELECT AVG(Student_ID)
  5  FROM Students
  6  );

STUDENT_ID NAME               DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
---------- ------------------ --------- ---------- --------------- -------------
       206 Sarita Kumari      16-OCT-05 Female     9876543710       106
       207 Divya Kumari       17-OCT-05 Female     9876549210       107
       208 Laxmi Kumari       18-OCT-05 Female     9876548210       108
       209 Viniti Kumari      19-OCT-05 Female     9876573210       109
       210 Kumar              22-OCT-05 Male       9776543210       110

Q9->


SQL>  SELECT Department_ID
  2   FROM Students
  3   GROUP BY Department_ID
  4   HAVING COUNT(*) >= (
  5  SELECT AVG(cnt)
  6   FROM (
  7   SELECT COUNT(*) AS cnt
  8   FROM Students
  9   GROUP BY Department_ID
 10  )
 11  );

DEPARTMENT_ID
-------------
          107
          108
          105
          109
          110
          104
          101
          103
          102
          106



Q10->


SQL> SELECT Name
  2  FROM Students
  3  WHERE Student_ID IN (
  4  SELECT Student_ID
  5  FROM Enrollment
  6  );

NAME
------------------
Priyanka Kumari
Priyanshu Kumari
Priyank Kumar
Priya Kumari
Puja Kumari
Sarita Kumari
Divya Kumari
Laxmi Kumari
Viniti Kumari
Kumar



Q11->


SQL> SELECT *
  2  FROM Students
  3  WHERE Department_ID IN (
  4  SELECT Department_ID
  5  FROM Department
  6  );

STUDENT_ID NAME               DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
---------- ------------------ --------- ---------- --------------- -------------
       201 Priyanka Kumari    12-OCT-05 Female     9876543210       101
       202 Priyanshu Kumari   01-OCT-05 Female     9876543200       102
       203 Priyank Kumar      13-OCT-05 male       9876543211       103
       204 Priya Kumari       14-OCT-05 Female     9875543210       104
       205 Puja Kumari        15-OCT-05 Female     9876573210       105
       206 Sarita Kumari      16-OCT-05 Female     9876543710       106
       207 Divya Kumari       17-OCT-05 Female     9876549210       107
       208 Laxmi Kumari       18-OCT-05 Female     9876548210       108
       209 Viniti Kumari      19-OCT-05 Female     9876573210       109
       210 Kumar              22-OCT-05 Male       9776543210       110



Q12->


SQL> SELECT *
  2  FROM Course
  3  WHERE Course_ID IN (
  4  SELECT Course_ID
  5  FROM Enrollment
  6  );

 COURSE_ID COURSE_NAME             CREDITS DEPARTMENT_ID FACULTY_ID
---------- -------------------- ---------- ------------- ----------
      1001 Science                       4           101         1
      1002 CPP                           5           102         2
      1003 Surveying                     4           103         3
      1004 EGD                           3           104         4
      1005 OOPs                          7           105         5
      1006 DBMS                          6           107         6
      1007 ML                            4           107         7
      1008 AI                            5           108         8
      1009 Computer Network              3           109         9
      1010 Computer Science              3           110        10



Q13->


SQL> SELECT *
  2  FROM Course
  3  WHERE Credits = (
  4  SELECT MAX(Credits)
  5  FROM Course
  6  );

 COURSE_ID COURSE_NAME             CREDITS DEPARTMENT_ID FACULTY_ID
---------- -------------------- ---------- ------------- ----------
      1005 OOPs                          7           105         5

Q14->


SQL>  SELECT Student_ID
  2   FROM Enrollment
  3   GROUP BY Student_ID
  4   HAVING COUNT(Course_ID) >= 1;

STUDENT_ID
----------
       210
       206
       203
       204
       209
       202
       201
       207
       205
       208

Q15->


SQL> SELECT Department_ID
  2  FROM Students
  3  GROUP BY Department_ID
  4  HAVING COUNT(*) = (
  5  SELECT MAX(cnt)
  6  FROM (
  7  SELECT COUNT(*) AS cnt
  8  FROM Students
  9  GROUP BY Department_ID
 10  )
 11  );

DEPARTMENT_ID
-------------
          107
          108
          105
          109
          110
          104
          101
          103
          102
          106

Q16->


SQL> SELECT DISTINCT Student_ID
  2   FROM Enrollment
  3   WHERE Course_ID IN (
  4   SELECT Course_ID
  5   FROM Enrollment
  6   WHERE Student_ID = '201'
  7  )
  8   AND Student_ID <> 201 ;

Q17->


SQL> SELECT *
  2  FROM Students
  3  WHERE Student_ID NOT IN (
  4  SELECT Student_ID
  5  FROM Enrollment
  6  );

Q18->


SQL> SELECT *
  2  FROM Course
  3  WHERE Course_ID NOT IN (
  4  SELECT Course_ID
  5  FROM Enrollment
  6  );

