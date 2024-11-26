use library_management;

/* CURD Operations */

/*Create New Book Record*/

Insert into books(isbn,Book_title,category,rental_price,status,author,publisher)
Values(978-15-478125-6,'Baahubali the Beginning','History',6.50,'Yes','SS Rajumoli','Tollywood');

/*Update an Existing Member Address*/

update Members
set Member_Address = 'Mogaltur'
where Member_id IN ('C101','C102');

/* Retrieve All Books in a Specific Category */

SELECT * FROM Books
WHERE category = 'Classic';
    
/*Delete Record From The Issued_Status */

delete from Issued_Status
where Issued_id = 'is106';

    
/* 1. Query to Find All Books Issued to a Member */

SELECT 
    i.issued_id, 
	i.issued_date,
	b.book_title
FROM 
    issued_status as I
JOIN 
    books as B
ON i.issued_book_isbn = B.isbn 
WHERE i.issued_member_id = 'C108';

/* 2. Query to Get Details of Employees Working in a Specific Branch */

SELECT 
    emp_id, emp_name, position, salary, Branch_Id
FROM
    employees
WHERE
    branch_id = 'B001';
    
/* 3. Query to Find Available Books */

SELECT 
    isbn, book_title, category, rental_price,Status 
FROM 
    books 
WHERE 
    status = 'YES';
    
/* 4. Query to Generate a Report of Books Issued and Returned */
    
SELECT 
    i.issued_id,
    i.issued_book_name AS issued_book,
    i.issued_date,
    r.return_date
FROM
    issued_status i
	JOIN
    return_status r 
    ON i.issued_id = r.issued_id;

/* 5. Query to Count the Total Books Issued */

SELECT 
    COUNT(*) AS total_issued_books 
FROM 
    issued_status;
    
/* 6. Query to Find the Total Salary Paid to Employees */

SELECT 
    SUM(round(salary)) AS total_salary 
FROM 
    employees;

/* 7. List All Books by a Specific Author */

SELECT 
    isbn, book_title, category, rental_price, status 
FROM 
    books 
WHERE 
    author = 'Harper lee';

/* 8. List All Employees and Their Respective Branch */

SELECT 
    e.emp_id, e.emp_name, e.position, e.salary, b.branch_address 
FROM 
    employees e 
INNER JOIN 
    branch b 
ON e.branch_id = b.branch_id;
    
/* 9. Check Issued Books with Their Member and Employee Details */

SELECT 
    i.issued_id,
    m.member_name,
    b.book_title,
    e.emp_name,
    i.issued_date
FROM
    issued_status i
	INNER JOIN
    members m
    ON i.issued_member_id = m.member_id
	INNER JOIN
    books b
    ON i.issued_book_isbn = b.isbn
	INNER JOIN
    employees e
    ON i.issued_emp_id = e.emp_id;
    
/* 10. Find the Most Expensive Book */

SELECT 
    book_title, rental_price 
FROM 
    books 
ORDER BY 
    rental_price DESC 
LIMIT 1;

/* 11. Find the Branch with the Most Employees */

SELECT 
    branch_id, COUNT(*) AS total_employees
FROM
    employees
GROUP BY branch_id
ORDER BY total_employees DESC
LIMIT 1;

/* 12.Find the Most Popular Category of Books */

SELECT 
    b.category, COUNT(i.issued_id) AS issued_count
FROM
    books b
INNER JOIN
    issued_status i
ON b.isbn = i.issued_book_isbn
GROUP BY b.category
ORDER BY issued_count DESC
LIMIT 1;

/* 13. Retrieve Members Who Have Borrowed More Than 3 Books */

SELECT 
    i.issued_member_id,
    m.member_name,
    COUNT(i.issued_id) AS total_books_borrowed
FROM
    issued_status i
INNER JOIN
    members m
ON i.issued_member_id = m.member_id
GROUP BY i.issued_member_id , m.member_name
HAVING COUNT(i.issued_id) > 3;

/* 14. Find the Most Active Member */

SELECT 
    i.issued_member_id,
    m.member_name,
    COUNT(i.issued_id) AS books_issued
FROM
    issued_status i
JOIN
    members m
ON i.issued_member_id = m.member_id
GROUP BY i.issued_member_id , m.member_name
ORDER BY books_issued DESC
LIMIT 1;

/* 15. Generate a Cumulative Revenue Report */

SELECT 
    i.issued_date, 
    SUM(b.rental_price) OVER (ORDER BY i.issued_date) AS cumulative_revenue 
FROM 
    issued_status i 
JOIN 
    books b 
ON 
    i.issued_book_isbn = b.isbn 
ORDER BY 
    i.issued_date;
    
/* 16. List All Books and Their Current Status */

SELECT 
    book_title, status
FROM
    books
ORDER BY status;

/* 17.Total Number of Books in Each Category */

SELECT 
    category, COUNT(*) AS total_books
FROM
    books
GROUP BY category;

/* 18.Find Members Who Have Not Borrowed Any Books */

SELECT 
    m.member_id, m.member_name
FROM
    members m
LEFT JOIN
    issued_status i 
ON m.member_id = i.issued_member_id
WHERE i.issued_id IS NULL;

/* 19. Find the Most Frequently Borrowed Book */

SELECT 
    b.book_title, COUNT(i.issued_id) AS borrow_count
FROM
    books b
JOIN
    issued_status i 
ON b.isbn = i.issued_book_isbn
GROUP BY b.book_title
ORDER BY borrow_count DESC
LIMIT 1;

/* 20.Calculate Total Revenue Per Branch */

SELECT 
    b.branch_id,
    b.branch_address,
    SUM(bk.rental_price) AS total_revenue
FROM
    branch b
JOIN
    employees e ON b.branch_id = e.branch_id
JOIN
    issued_status i ON e.emp_id = i.issued_emp_id
JOIN
    books bk ON i.issued_book_isbn = bk.isbn
GROUP BY b.branch_id , b.branch_address;


select * from issued_status;
select * from return_status;
select * from Books;
select * from branch;
select * from employees;
Select * from Members;










