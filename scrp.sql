create database market;
use market;
CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Password VARCHAR(255),
    Role VARCHAR(50),
    RegistrationDate DATE
);

 
CREATE TABLE Tasks (
    TaskID INT PRIMARY KEY AUTO_INCREMENT,
    TaskDescription TEXT,
    Budget DECIMAL(10,2),
    PostDate DATE,
    DueDate DATE,
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

 
CREATE TABLE Bids (
    BidID INT PRIMARY KEY AUTO_INCREMENT,
    Amount DECIMAL(10,2),
    BidDate DATE,
    TaskID INT,
    UserID INT,
    FOREIGN KEY (TaskID) REFERENCES Tasks(TaskID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

 
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    AmountPaid DECIMAL(10,2),
    PaymentDate DATE,
    TaskID INT,
    FOREIGN KEY (TaskID) REFERENCES Tasks(TaskID)
);
INSERT INTO Users (UserID, Name, Email, Password, Role, RegistrationDate) VALUES
(1, 'Alice Smith', 'alice.smith@example.com', 'password123', 'Customer', '2023-01-05'),
(2, 'Bob Johnson', 'bob.johnson@example.com', 'password456', 'Service Provider', '2023-02-10'),
(3, 'Charlie Davis', 'charlie.davis@example.com', 'password789', 'Customer', '2023-03-15'),
(4, 'Diana White', 'diana.white@example.com', 'password101', 'Service Provider', '2023-04-20'),
(5, 'Eve Brown', 'eve.brown@example.com', 'password102', 'Customer', '2023-05-25'),
(6, 'Frank Green', 'frank.green@example.com', 'password103', 'Service Provider', '2023-06-01'),
(7, 'Grace Adams', 'grace.adams@example.com', 'password104', 'Customer', '2023-07-05'),
(8, 'Henry Wilson', 'henry.wilson@example.com', 'password105', 'Service Provider', '2023-08-10'),
(9, 'Ivy Taylor', 'ivy.taylor@example.com', 'password106', 'Customer', '2023-09-15'),
(10, 'Jack Thomas', 'jack.thomas@example.com', 'password107', 'Service Provider', '2023-10-01'),
(11, 'Karen Harris', 'karen.harris@example.com', 'password108', 'Customer', '2023-11-05'),
(12, 'Leo Martin', 'leo.martin@example.com', 'password109', 'Service Provider', '2023-12-10');
INSERT INTO Tasks (TaskID, TaskDescription, Budget, PostDate, DueDate, UserID) VALUES
(1, 'Fix my leaking sink', 50.00, '2023-01-10', '2023-01-15', 1),
(2, 'Paint my living room', 200.00, '2023-02-15', '2023-02-28', 3),
(3, 'Move furniture to a new house', 150.00, '2023-03-20', '2023-03-25', 5),
(4, 'Assemble IKEA furniture', 75.00, '2023-04-05', '2023-04-10', 7),
(5, 'Install a new light fixture', 40.00, '2023-05-01', '2023-05-05', 9),
(6, 'Mow my lawn', 30.00, '2023-06-10', '2023-06-12', 11),
(7, 'Clean my house', 100.00, '2023-07-12', '2023-07-20', 1),
(8, 'Fix my broken window', 120.00, '2023-08-10', '2023-08-15', 3),
(9, 'Transport heavy goods', 250.00, '2023-09-05', '2023-09-15', 5),
(10, 'Clean my car', 25.00, '2023-10-02', '2023-10-05', 7),
(11, 'Move boxes to storage', 80.00, '2023-11-15', '2023-11-20', 9),
(12, 'Repair my fence', 175.00, '2023-12-01', '2023-12-05', 11);
INSERT INTO Bids (BidID, Amount, BidDate, TaskID, UserID) VALUES
(1, 55.00, '2023-01-11', 1, 2),
(2, 210.00, '2023-02-17', 2, 4),
(3, 160.00, '2023-03-22', 3, 6),
(4, 80.00, '2023-04-06', 4, 8),
(5, 45.00, '2023-05-02', 5, 10),
(6, 35.00, '2023-06-11', 6, 12),
(7, 105.00, '2023-07-14', 7, 2),
(8, 130.00, '2023-08-12', 8, 4),
(9, 260.00, '2023-09-07', 9, 6),
(10, 30.00, '2023-10-03', 10, 8),
(11, 85.00, '2023-11-16', 11, 10),
(12, 185.00, '2023-12-02', 12, 12);
INSERT INTO Payments (PaymentID, AmountPaid, PaymentDate, TaskID) VALUES
(1, 55.00, '2023-01-16', 1),
(2, 210.00, '2023-02-28', 2),
(3, 160.00, '2023-03-26', 3),
(4, 80.00, '2023-04-10', 4),
(5, 45.00, '2023-05-06', 5),
(6, 35.00, '2023-06-13', 6),
(7, 105.00, '2023-07-21', 7),
(8, 130.00, '2023-08-16', 8),
(9, 260.00, '2023-09-16', 9),
(10, 30.00, '2023-10-06', 10),
(11, 85.00, '2023-11-21', 11),
(12, 185.00, '2023-12-06', 12);
INSERT INTO Users (UserID, Name, Email, Password, Role, RegistrationDate) VALUES
(132, 'Alice Smith', 'alice@example.com', 'hashed_password_1', 'Customer', CURDATE() - INTERVAL 10 DAY),
(13, 'Bob Johnson', 'bob@example.com', 'hashed_password_2', 'Service Provider', CURDATE() - INTERVAL 5 DAY),
(14, 'Charlie Brown', 'charlie@example.com', 'hashed_password_3', 'Customer', CURDATE() - INTERVAL 25 DAY),
(15, 'David Wilson', 'david@example.com', 'hashed_password_4', 'Service Provider', CURDATE() - INTERVAL 15 DAY),
(16, 'Eva Adams', 'eva@example.com', 'hashed_password_5', 'Customer', CURDATE() - INTERVAL 35 DAY),
(17, 'Frank Miller', 'frank@example.com', 'hashed_password_6', 'Service Provider', CURDATE() - INTERVAL 20 DAY),
(18, 'Grace Lee', 'grace@example.com', 'hashed_password_7', 'Customer', CURDATE() - INTERVAL 2 DAY),
(19, 'Henry Taylor', 'henry@example.com', 'hashed_password_8', 'Service Provider', CURDATE() - INTERVAL 1 DAY),
(20, 'Isla Davis', 'isla@example.com', 'hashed_password_9', 'Customer', CURDATE() - INTERVAL 30 DAY),
(21, 'Jack Thompson', 'jack@example.com', 'hashed_password_10', 'Service Provider', CURDATE() - INTERVAL 40 DAY),
(22, 'Liam Garcia', 'liam@example.com', 'hashed_password_11', 'Customer', CURDATE() - INTERVAL 60 DAY),
(23, 'Mia Rodriguez', 'mia@example.com', 'hashed_password_12', 'Service Provider', CURDATE() - INTERVAL 45 DAY);

INSERT INTO Tasks (TaskID, TaskDescription, Budget, PostDate, DueDate, UserID) VALUES
(21, 'Clean the house', 50.00, CURDATE() - INTERVAL 10 DAY, CURDATE() - INTERVAL 5 DAY, 12),
(22, 'Wash the car', 30.00, CURDATE() - INTERVAL 20 DAY, CURDATE() - INTERVAL 15 DAY, 14),
(23, 'Walk the dog', 15.00, CURDATE() - INTERVAL 2 DAY, CURDATE() + INTERVAL 1 DAY, 18),
(24, 'Grocery shopping', 100.00, CURDATE() - INTERVAL 5 DAY, CURDATE() + INTERVAL 3 DAY, 13),
(25, 'Babysitting', 40.00, CURDATE() - INTERVAL 1 DAY, CURDATE() + INTERVAL 2 DAY, 19);


INSERT INTO Bids (BidID, Amount, BidDate, TaskID, UserID) VALUES
(13, 45.00, CURDATE() - INTERVAL 9 DAY, 21, 13),
(23, 25.00, CURDATE() - INTERVAL 18 DAY, 22, 15),
(33, 20.00, CURDATE() - INTERVAL 1 DAY, 23, 17),
(43, 15.00, CURDATE() - INTERVAL 4 DAY, 24, 16);


select * from Users;

SELECT Role, COUNT(UserID) AS TotalUsers 
FROM Users 
GROUP BY Role;

SELECT Users.Name, SUM(Payments.AmountPaid) AS TotalRevenue 
FROM Users 
JOIN Tasks ON Users.UserID = Tasks.UserID 
JOIN Payments ON Tasks.TaskID = Payments.TaskID 
GROUP BY Users.Name 
ORDER BY TotalRevenue DESC 
LIMIT 10;


SELECT 
    DATE_FORMAT(PostDate, '%Y-%m') AS Month, 
    COUNT(DISTINCT TaskID) AS TasksPosted, 
    COUNT(DISTINCT BidID) AS BidsPlaced 
FROM Tasks 
LEFT JOIN Bids ON Tasks.TaskID = Bids.TaskID 
GROUP BY Month;

SELECT Tasks.TaskID, Tasks.Budget, COUNT(Bids.BidID) AS TotalBids 
FROM Tasks 
LEFT JOIN Bids ON Tasks.TaskID = Bids.TaskID 
GROUP BY Tasks.TaskID, Tasks.Budget 
HAVING Tasks.Budget < (SELECT AVG(Budget) FROM Tasks) AND COUNT(Bids.BidID) < 3;


SELECT UserID, Name, RegistrationDate 
FROM Users 
WHERE RegistrationDate >= CURDATE() - INTERVAL 30 DAY
AND UserID NOT IN (SELECT UserID FROM Tasks UNION SELECT UserID FROM Bids);

SELECT Users.Name, COUNT(Bids.BidID) AS TotalBids, COUNT(Payments.PaymentID) AS TasksCompleted 
FROM Users 
JOIN Bids ON Users.UserID = Bids.UserID 
LEFT JOIN Payments ON Bids.TaskID = Payments.TaskID 
WHERE Users.Role = 'Service Provider' 
GROUP BY Users.Name 
HAVING COUNT(Payments.PaymentID) / COUNT(Bids.BidID) < 0.2;
  
  
  SELECT Users.Name, COUNT(Tasks.TaskID) AS DelayedTasks 
FROM Users 
JOIN Tasks ON Users.UserID = Tasks.UserID 
JOIN Payments ON Tasks.TaskID = Payments.TaskID 
WHERE PaymentDate > DueDate 
GROUP BY Users.Name;


SELECT TaskID, Budget, AVG(Amount) AS AvgBidAmount 
FROM Tasks 
JOIN Bids ON Tasks.TaskID = Bids.TaskID 
GROUP BY TaskID 
HAVING AVG(Amount) > Budget;
