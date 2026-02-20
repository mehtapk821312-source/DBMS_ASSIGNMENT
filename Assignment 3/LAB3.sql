SQL> INSERT INTO Department VALUES(101, 'Computer Science ', 'BLOCK A');
 
1 row created.

SQL> INSERT INTO Department VALUES(102, 'Computer Science and Engineering', 'BLOCK A');

1 row created.

SQL> INSERT INTO Department VALUES(103,'Civil Engineering','BLOCK C');

1 row created.

SQL> INSERT INTO Department VALUES(104,'Mechanical Engineering','BLOCK D');

1 row created.

SQL> INSERT INTO Department VALUES(105,'Civil With Computer Application','BLOCK E');

1 row created.

SQL> INSERT INTO Department VALUES(106,'Electrical Engineering','BLOCK F');

1 row created.

SQL> INSERT INTO Department VALUES(107,'Electronics Engineering','BLOCK G');

1 row created.

SQL> INSERT INTO Department VALUES(108,'Artificial Intelligence','BLOCK H');

1 row created.

SQL> INSERT INTO Department VALUES(109,'Data Science Engineering','BLOCK I');

1 row created.

SQL> INSERT INTO Department VALUES(110,'Animation And Graphics Engineering','BLOCK J');

1 row created.



SQL> INSERT INTO Students VALUES(201,'Priyanka Kumari',TO_DATE('12-10-2005','DD-MM-YYYY'),'Female','9876543210',101);

1 row created.

SQL> INSERT INTO Students VALUES(202,'Priyanshu Kumari',TO_DATE('01-10-2005','DD-MM-YYYY'),'Female','9876543200',102);

1 row created.

SQL> INSERT INTO Students VALUES(203,'Priyank Kumar',TO_DATE('13-10-2005','DD-MM-YYYY'),'male','9876543211',103);

1 row created.

SQL> INSERT INTO Students VALUES(204,'Priya Kumari',TO_DATE('14-10-2005','DD-MM-YYYY'),'Female','9875543210',104);

1 row created.

SQL> INSERT INTO Students VALUES(205,'Puja Kumari',TO_DATE('15-10-2005','DD-MM-YYYY'),'Female','9876573210',105);

1 row created.

SQL> INSERT INTO Students VALUES(206,'Sarita Kumari',TO_DATE('16-10-2005','DD-MM-YYYY'),'Female','9876543710',106);

1 row created.

SQL> INSERT INTO Students VALUES(207,'Divya Kumari',TO_DATE('17-10-2005','DD-MM-YYYY'),'Female','9876549210',107);

1 row created.

SQL> INSERT INTO Students VALUES(208,'Laxmi Kumari',TO_DATE('18-10-2005','DD-MM-YYYY'),'Female','9876548210',108);

1 row created.

SQL> INSERT INTO Students VALUES(209,'Viniti Kumari',TO_DATE('19-10-2005','DD-MM-YYYY'),'Female','9876573210',109);

1 row created.

SQL> INSERT INTO Students VALUES(210,'Kumar',TO_DATE('22-10-2005','DD-MM-YYYY'),'Male','9776543210',110);

1 row created.



SQL> INSERT INTO Faculty VALUES(1,'Kunal Kumar','Professor','kunal@college.com',101);

1 row created.

SQL>  INSERT INTO Faculty VALUES(2,'Murlidhar Prasad Singh','Professor','murlidhar@college.com',102);

1 row created.

SQL>  INSERT INTO Faculty VALUES(3,'Akhilesh Kumar','Professor','akhileshbpmce@college.com',103);

1 row created.

SQL>  INSERT INTO Faculty VALUES(4,'Arun Kumar','Faculty','arunbpmce@college.com',104);

1 row created.

SQL>  INSERT INTO Faculty VALUES(5,'Sujeet Kumar','Professor','sujeetbpmce@college.com',105);

1 row created.

SQL>  INSERT INTO Faculty VALUES(6,'Nishikant Singh','Professor','nishikant@college.com',106);

1 row created.

SQL>  INSERT INTO Faculty VALUES(7,'Sakila Kumari','Professor','sakila@college.com',107);

1 row created.

SQL>  INSERT INTO Faculty VALUES(8,'Manisha Kumari','Professor','manishabpmce@college.com',108);

1 row created.

SQL>  INSERT INTO Faculty VALUES(9,'Raushan Kumar','Faculty','raushanbpmce@college.com',109);

1 row created.

SQL>  INSERT INTO Faculty VALUES(10,'Pankaj Singh','Professor','pankajbpmce@college.com',110);

1 row created.



SQL> INSERT INTO Course VALUES(1001,'Science',4,101,1);

1 row created.

SQL> INSERT INTO Course VALUES(1002,'CPP',5,102,2);

1 row created.

SQL> INSERT INTO Course VALUES(1003,'Surveying',4,103,3);

1 row created.

SQL> INSERT INTO Course VALUES(1004,'EGD',3,104,4);

1 row created.

SQL> INSERT INTO Course VALUES(1005,'OOPs',7,105,5);

1 row created.

SQL> INSERT INTO Course VALUES(1006,'DBMS',6,107,6);

1 row created.

SQL> INSERT INTO Course VALUES(1007,'ML',4,107,7);

1 row created.

SQL> INSERT INTO Course VALUES(1008,'AI',5,108,8);

1 row created.

SQL> INSERT INTO Course VALUES(1009,'Computer Network',3,109,9);

1 row created.

SQL> INSERT INTO Course VALUES(1010,'Computer Science',3,110,10);

1 row created.



SQL> INSERT INTO Enrollment VALUES(23701,201,1001,'5th','A');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23702,202,1002,'5th','A+');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23703,203,1003,'5th','A');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23704,204,1004,'4th','A++');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23705,205,1005,'6th','B');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23706,206,1006,'3th','B+');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23707,207,1007,'2th','C');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23708,208,1008,'5th','A');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23709,209,1009,'6th','A+');

1 row created.

SQL> INSERT INTO Enrollment VALUES(23710,210,1010,'5th','A++');

1 row created.



SQL> SELECT * FROM Department;

DEPARTMENT_ID DEPARTMENT_NAME                     OFFICE_LO
------------- ----------------------------------- ---------
          101 Computer Science                    BLOCK A
          102 Computer Science and Engineering    BLOCK A
          103 Civil Engineering                   BLOCK C
          104 Mechanical Engineering              BLOCK D
          105 Civil With Computer Application     BLOCK E
          106 Electrical Engineering              BLOCK F
          107 Electronics Engineering             BLOCK G
          108 Artificial Intelligence             BLOCK H
          109 Data Science Engineering            BLOCK I
          110 Animation And Graphics Engineering  BLOCK J

10 rows selected.



SQL> SELECT * FROM Students;

STUDENT_ID NAME             DATE_OF_B GENDER     CONTACT_NUMBER  DEPARTMENT_ID
---------- ---------------- --------- ---------- --------------- -------------
       201 Priyanka Kumari  12-OCT-05 Female     9876543210                101
       202 Priyanshu Kumari 01-OCT-05 Female     9876543200                102
       203 Priyank Kumar    13-OCT-05 male       9876543211                103
       204 Priya Kumari     14-OCT-05 Female     9875543210                104
       205 Puja Kumari      15-OCT-05 Female     9876573210                105
       206 Sarita Kumari    16-OCT-05 Female     9876543710                106
       207 Divya Kumari     17-OCT-05 Female     9876549210                107
       208 Laxmi Kumari     18-OCT-05 Female     9876548210                108
       209 Viniti Kumari    19-OCT-05 Female     9876573210                109
       210 Kumar            22-OCT-05 Male       9776543210                110

10 rows selected.



SQL> SELECT * FROM Faculty;

FACULTY_ID NAME             DESIGNATIO EMAIL                     DEPARTMENT_ID
---------- ---------------- ---------- ------------------------- -------------
         1 Kunal Kumar      Professor  kunal@college.com                   101
         2 Murlidhar Prasad Professor  murlidhar@college.com               102
         3 Akhilesh Kumar   Professor  akhileshbpmce@college.com           103
         4 Arun Kumar       Faculty    arunbpmce@college.com               104
         5 Sujeet Kumar     Professor  sujeetbpmce@college.com             105
         6 Nishikant Singh  Professor  nishikant@college.com               106
         7 Sakila Kumari    Professor  sakila@college.com                  107
         8 Manisha Kumari   Professor  manishabpmce@college.com            108
         9 Raushan Kumar    Faculty    raushanbpmce@college.com            109
        10 Pankaj Singh     Professor  pankajbpmce@college.com             110

10 rows selected.



SQL> SELECT * FROM Course;

 COURSE_ID COURSE_NAME             CREDITS DEPARTMENT_ID FACULTY_ID
---------- -------------------- ---------- ------------- ----------
      1001 Science                       4           101          1
      1002 CPP                           5           102          2
      1003 Surveying                     4           103          3
      1004 EGD                           3           104          4
      1005 OOPs                          7           105          5
      1006 DBMS                          6           107          6
      1007 ML                            4           107          7
      1008 AI                            5           108          8
      1009 Computer Network              3           109          9
      1010 Computer Science              3           110         10

10 rows selected.



SQL> SELECT * FROM Enrollment;

ENROLLMENT_ID STUDENT_ID  COURSE_ID SEMESTER             GRADE
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


