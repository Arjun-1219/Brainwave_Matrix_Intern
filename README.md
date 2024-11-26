My First Project Library Management System using MY SQL

Project Overview

Project Title: Library Management System

Database: library_management

This project demonstrates the implementation of a Library Management System using SQL. It includes creating and managing tables,performing CRUD operations, and executing SQL queries. The goal is to showcase skills in database design, manipulation, and querying.

Objectives

Set up the Library Management System Database: Create and populate the database with tables for branches, employees, members, books, issued status, and return status.

CRUD Operations: Perform Create, Read, Update, and Delete operations on the data.

SQL Queries: Develop queries to analyze and retrieve specific data.

Project Structure

1. Database Setup

![Screenshot 2024-11-08 100520](https://github.com/user-attachments/assets/0c0f52b1-e556-4279-80e1-503cb4fc199f)

Database Creation: Created a database named library_Management.

Table Creation: Created tables for branches, employees, members, books, issued status, and return status. Each table includes relevant columns and relationships.

 CRUD Operations
 
Create: Inserted sample records into the books table.

Read: Retrieved and displayed data from various tables.

Update: Updated records in the employees table.

Delete: Removed records from the members table as needed.

Create New Book Record

Insert into books(isbn,Book_title,category,rental_price,status,author,publisher)
Values(978-15-478125-6,'Baahubali the Beginning','History',6.50,'Yes','SS Rajumoli','Tollywood');

Update an Existing Member Address

Update Members
set Member_Address = 'Mogaltur'
where Member_id IN ('C101','C102');

Retrieve All Books in a Specific Category

SELECT * FROM Books
WHERE category = 'Classic';
    
Delete Record From The Issued_Status

delete from Issued_Status
where Issued_id = 'is106';

20 SQL Queries
1. Query to Find All Books Issued to a Member.
2. Query to Get Details of Employees Working in a Specific Branch.
3. Query to Find Available Books.
4. Query to Generate a Report of Books Issued and Returned.
5. Query to Count the Total Books Issued.
6. Query to Find the Total Salary Paid to Employees.
7. List All Books by a Specific Author.
8. List All Employees and Their Respective Branch.
9. Check Issued Books with Their Member and Employee Details.
10. Find the Most Expensive Book.
11. Find the Branch with the Most Employees.
12. Find the Most Popular Category of Books.
13. Retrieve Members Who Have Borrowed More Than 3 Books.
14. Find the Most Active Member.
15. Generate a Cumulative Revenue Report.
16. List All Books and Their Current Status.
17. Total Number of Books in Each Category.
18. Find Members Who Have Not Borrowed Any Books.
19. Find the Most Frequently Borrowed Book.
20. Calculate Total Revenue Per Branch.















 
  




























