GitHub Repository Link:
https://github.com/parthdhawale/SDD_lab2

Zip File Contents

   1) q1.sql
   2) q2.sql
   3) q3.sql
   4) q4.sql
   5) q5.sql
   6) ReadMe.txt

q1.sql
Lists all the subscribers
Use the procedure : CALL ListAllSubscribers();

q2.sql
watch history for one subscriber (example: ID 1)
Use the procedure : CALL GetWatchHistoryBySubscriber(1);

q3.sql
Add a subscriber if not already in the Database
Use the procedure : CALL AddSubscriberIfNotExists('input name');

q4.sql
Displays a consolidated watch-time report
Use the procedure : CALL SendWatchTimeReport();

q5.sql
Displays a consolidated watch-time report
Use the procedure : CALL SendWatchTimeReport();

If you get following Error “Procedure already exists” → run  DROP PROCEDURE IF EXISTS procedure_name;
then re-execute the script.

Please use below table creation, insertion statement to load data into your local machine.
-- Create Tables
CREATE TABLE Shows (
ShowID INT PRIMARY KEY,
Title VARCHAR(100),
Genre VARCHAR(50),
ReleaseYear INT
);
CREATE TABLE Subscribers (
SubscriberID INT PRIMARY KEY,
SubscriberName VARCHAR(100),
SubscriptionDate DATE
);
CREATE TABLE WatchHistory (
HistoryID INT PRIMARY KEY,
ShowID INT,
SubscriberID INT,
WatchTime INT, -- Duration in minutes
FOREIGN KEY (ShowID) REFERENCES Shows(ShowID),
FOREIGN KEY (SubscriberID) REFERENCES
Subscribers(SubscriberID)
);
-- Insert Sample Data
INSERT INTO Shows (ShowID, Title, Genre, ReleaseYear) VALUES
(1, 'Stranger Things', 'Sci-Fi', 2016),
(2, 'The Crown', 'Drama', 2016),
(3, 'The Witcher', 'Fantasy', 2019);
INSERT INTO Subscribers (SubscriberID, SubscriberName,
SubscriptionDate) VALUES
(1, 'Emily Clark', '2023-01-10'),
(2, 'Chris Adams', '2023-02-15'),
(3, 'Jordan Smith', '2023-03-05');
INSERT INTO WatchHistory (HistoryID, SubscriberID, ShowID,
WatchTime) VALUES
(1, 1, 1, 100),
(2, 1, 2, 10),
(3, 2, 1, 20),
(4, 2, 2, 40),
(5, 2, 3, 10),
(6, 3, 2, 10),
(7, 3, 1, 10);







