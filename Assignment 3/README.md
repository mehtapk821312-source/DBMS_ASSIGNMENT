 College Database Lab – Data Collection & SQL Data Insertion
** Student Information:-
Name:- Priyanka Kumari
Registration No.:- 23157128043
Branch:- Computer Science & Engineering(AI&ML)
Semester:- 5th Semester
College:- B.P. Mandal College of Engineering Madhepura,Bihar
Subject:- Database Management System Lab
Lab Title:- Data Collection & Data Insertion
 /**

**Objective:-

This laboratory assignment focuses on understanding how real academic data is collected and inserted into a relational database using SQL. The exercise emphasizes accuracy, authenticity of sources, database normalization, and maintaining referential integrity while working with real institutional records.
/**

**Tools & Technologies Used:-

Oracle SQL 
Relation Database Management System (RDBMS)
GitHub for Submission and version control
Data Collection Method: Official college webpages, academic notices, syllabus documents, and timetable records
/**

**Authentic Data Sources:-

The dataset used in this lab was collected carefully from reliable institutional materials:
Official college website and departmental pages
Academic timetable and syllabus documents
Official academic notices/prospectus
Class roll records (contact numbers anonymized for privacy)
Only verified academic information was used to ensure realistic database implementation.
/**

**Database Schema Overview:-

The database consists of five interconnected relational tables:

Department:-
Department_ID
Department_Name
Office_Location

Faculty:-
Faculty_ID
Faculty_Name
Designation
Email
Department_ID

Course:-
Course_ID
Course_Name
Credits
Department_ID
Faculty_ID

Student:-
Student_ID
Student_Name
Date_of_Birth
Gender
Contact_Number (Dummy format)
Department_ID

Enrollment:-
Student_ID
Course_ID
Semester
Grade
/**

**Implementation Steps:-

Created database schema from ER model (previous lab).
Collected authentic academic data from institutional sources.
Wrote SQL INSERT INTO queries for each table.
Inserted minimum 10 records in Student, Course, and Enrollment tables.
/**





