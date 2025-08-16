
-- 1. Create a view to list all issued books with member and book details
CREATE VIEW IssuedBooksView AS
SELECT i.IssueID, m.Name AS MemberName, b.Title AS BookTitle, i.IssueDate, i.ReturnDate
FROM IssuedBooks i
JOIN Members m ON i.MemberID = m.MemberID
JOIN Books b ON i.BookID = b.BookID;

-- 2. Create a view for books along with their category and author
CREATE VIEW BookDetailsView AS
SELECT b.BookID, b.Title, a.Name AS AuthorName, c.CategoryName, b.PublishedYear
FROM Books b
LEFT JOIN Authors a ON b.AuthorID = a.AuthorID
LEFT JOIN Categories c ON b.CategoryID = c.CategoryID;

-- 3. Create a view for members who have borrowed more than one book
CREATE VIEW ActiveMembersView AS
SELECT m.MemberID, m.Name, COUNT(i.BookID) AS BooksBorrowed
FROM Members m
JOIN IssuedBooks i ON m.MemberID = i.MemberID
GROUP BY m.MemberID, m.Name
HAVING COUNT(i.BookID) > 1;

-- 4. Query using the IssuedBooksView
SELECT * FROM IssuedBooksView;

-- 5. Query using the BookDetailsView with filter
SELECT * FROM BookDetailsView WHERE CategoryName = 'Fiction';

-- 6. Drop a view example (commented for safety)
-- DROP VIEW IssuedBooksView;
