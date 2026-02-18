SQL> CREATE TABLE Department (Department_ID NUMBER PRIMARY KEY, Department_Name VARCHAR2(100) NOT NULL, Office_Location VARCHAR2(100));

Table created.


SQL> DESC Department
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPARTMENT_ID                             NOT NULL NUMBER
 DEPARTMENT_NAME                           NOT NULL VARCHAR2(100)
 OFFICE_LOCATION                                    VARCHAR2(100)



SQL> CREATE TABLE Students ( Student_ID NUMBER PRIMARY KEY, Name VARCHAR2(100) NOT NULL, Date_of_Birth DATE, Gender VARCHAR2(10),Contact_Number VARCHAR2(15), Department_ID NUMBER, CONSTRAINT fk_student_dept FOREIGN KEY (Department_ID) REFERENCES Department (Department_ID));

Table created.


SQL> DESC Students
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUDENT_ID                                NOT NULL NUMBER
 NAME                                      NOT NULL VARCHAR2(100)
 DATE_OF_BIRTH                                      DATE
 GENDER                                             VARCHAR2(10)
 CONTACT_NUMBER                                     VARCHAR2(15)
 DEPARTMENT_ID                                      NUMBER



SQL> CREATE TABLE Faculty ( Faculty_ID NUMBER PRIMARY KEY, Name VARCHAR2(100) NOT NULL, Designation VARCHAR2(50), Email VARCHAR2(100)UNIQUE, Department_ID NUMBER, CONSTRAINT fk_faculty_dept FOREIGN KEY(Department_ID) REFERENCES Department(Department_ID));

Table created.


SQL> DESC Faculty
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 FACULTY_ID                                NOT NULL NUMBER
 NAME                                      NOT NULL VARCHAR2(100)
 DESIGNATION                                        VARCHAR2(50)
 EMAIL                                              VARCHAR2(100)
 DEPARTMENT_ID                                      NUMBER



SQL> CREATE TABLE Course (Course_ID NUMBER PRIMARY KEY, Course_Name VARCHAR2(100) NOT NULL, Credits NUMBER, Department_ID NUMBER, Faculty_ID NUMBER, CONSTRAINT fk_Course_dept FOREIGN KEY(Department_ID) REFERENCES Department(Department_ID), CONSTRAINT fk_course_faculty FOREIGN KEY (Faculty_ID) REFERENCES Faculty(Faculty_ID));

Table created.


SQL> DESC Course
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COURSE_ID                                 NOT NULL NUMBER
 COURSE_NAME                               NOT NULL VARCHAR2(100)
 CREDITS                                            NUMBER
 DEPARTMENT_ID                                      NUMBER
 FACULTY_ID                                         NUMBER
 

                                                                                                                                                                                                          
SQL> CREATE TABLE Enrollment(Enrollment_ID NUMBER PRIMARY KEY, Student_ID NUMBER, Course_ID NUMBER, Semester VARCHAR2(20), Grade VARCHAR2(5), CONSTRAINT fk_enroll_student FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID), CONSTRAINT fk_enroll_course FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID));

Table created.


SQL> DESC Enrollment
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ENROLLMENT_ID                             NOT NULL NUMBER
 STUDENT_ID                                         NUMBER
 COURSE_ID                                          NUMBER
 SEMESTER                                           VARCHAR2(20)
 GRADE                                              VARCHAR2(5)

SQL> 