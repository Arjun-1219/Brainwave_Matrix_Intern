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

/*Create New Book Record*/

Insert into books(isbn,Book_title,category,rental_price,status,author,publisher)
Values(978-15-478125-6,'Baahubali the Beginning','History',6.50,'Yes','SS Rajumoli','Tollywood');





