SQL> CREATE TABLE Student(
  2  RollNo INT,
  3  Name VARCHAR(50),
  4  Dept VARCHAR(20),
  5  Age INT,
  6  Phone VARCHAR(15)
  7  );

Table created.

SQL> DESC Student
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)

SQL> CREATE TABLE Course(
  2  CourseID INT,
  3  CourseName VARCHAR(50),
  4  Credits INT
  5  );

Table created.

SQL> DESC Course
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COURSEID                                           NUMBER(38)
 COURSENAME                                         VARCHAR2(50)
 CREDITS                                            NUMBER(38)

SQL> ALTER TABLE Student
  2  ADD City VARCHAR(35);

Table altered.

SQL> DESC Student
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(35)

SQL> ALTER TABLE Student
  2  ADD Semester INT;

Table altered.

SQL> DESC Student
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(35)
 SEMESTER                                           NUMBER(38)

SQL> ALTER TABLE Student
  2  RENAME COLUMN Phone TO MobileNo;

Table altered.

SQL> DESC Student
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(35)
 SEMESTER                                           NUMBER(38)

SQL> DROP TABLE Course;

Table dropped.

SQL> DESC Course
ERROR:
ORA-04043: object Course does not exist


SQL> INSERT INTO Student VALUES(801,'Priyanka', 'AI', 20,'9876543210', 'Bihar',5);

1 row created.

SQL> INSERT INTO Student VALUES(802,'Puja', 'EEE',21,'9987654321','Delhi',4);

1 row created.

SQL> INSERT INTO Student VALUES(803,'Divya', 'CE',22''9887654321','Mumbai',3);
ERROR:
ORA-01756: quoted string not properly terminated


SQL> INSERT INTO Student VALUES(803,'Divya','CE',22,'9887654321','Mumbai',3);

1 row created.

SQL> INSERT INTO Student VALUES(804,'Laxmi','DS',23,'9998765432','Chennai',2);

1 row created.

SQL> INSERT INTO Student VALUES(805,'Srita','ME',24,'9876543211','Pune',6);

1 row created.

SQL> DESC Student
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(35)
 SEMESTER                                           NUMBER(38)

SQL> SELECT*FROM Student;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                  SEMESTER
----------------------------------- ----------
       801 Priyanka
AI                           20 9876543210
Bihar                                        5

       802 Puja
EEE                          21 9987654321
Delhi                                        4

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                  SEMESTER
----------------------------------- ----------

       803 Divya
CE                           22 9887654321
Mumbai                                       3

       804 Laxmi
DS                           23 9998765432

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                  SEMESTER
----------------------------------- ----------
Chennai                                      2

       805 Srita
ME                           24 9876543211
Pune                                         6


SQL> SELECT RollNo, Name FROM Student;

    ROLLNO NAME
---------- --------------------------------------------------
       801 Priyanka
       802 Puja
       803 Divya
       804 Laxmi
       805 Srita

SQL> SELECT*FROM Student
  2  WHERE Dept='CE';

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                  SEMESTER
----------------------------------- ----------
       803 Divya
CE                           22 9887654321
Mumbai                                       3


SQL> SELECT*FROM Student
  2  WHERE Age>20;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                  SEMESTER
----------------------------------- ----------
       802 Puja
EEE                          21 9987654321
Delhi                                        4

       803 Divya
CE                           22 9887654321
Mumbai                                       3

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                  SEMESTER
----------------------------------- ----------

       804 Laxmi
DS                           23 9998765432
Chennai                                      2

       805 Srita
ME                           24 9876543211

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                  SEMESTER
----------------------------------- ----------
Pune                                         6


SQL> UPDATE Student
  2  SET Dept='DS'
  3  WHERE RollNo=805;

1 row updated.

SQL> UPDATE Student
  2  SET City='Patna'
  3  WHERE Name='Divya';

1 row updated.

SQL> UPDATE Student
  2  SET Age =Age+1;

5 rows updated.

SQL> DELETE FROM Student
  2  WHERE RollNo=805;

1 row deleted.

SQL> DELETE FROM Student;

4 rows deleted.

SQL>