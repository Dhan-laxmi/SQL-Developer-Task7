use library_db;
desc authors;

## View – Book Issue Details
CREATE VIEW book_issue_details AS
SELECT m.MemberID, m.Name AS MemberName, b.BookID, b.Title AS BookTitle, a.Name AS AuthorName, i.IssueDate
FROM issued_books i
JOIN books b ON i.BookID = b.BookID
JOIN authors a ON b.AuthorID = a.AuthorID
JOIN members m ON i.MemberID = m.MemberID;

SELECT * FROM book_issue_details;

CREATE VIEW member_contact AS
SELECT MemberID, Name, Email
FROM members;

UPDATE member_contact
SET Email = 'rahul.updated@example.com'
WHERE MemberID = 1;

SELECT * FROM member_contact;

CREATE VIEW books_per_author AS
SELECT a.AuthorID, a.Name AS AuthorName, COUNT(b.BookID) AS TotalBooks
FROM authors a
LEFT JOIN books b ON a.AuthorID = b.AuthorID
GROUP BY a.AuthorID, a.Name;

select *from books_per_author;

drop view books_per_author;

select *from books_per_author;


