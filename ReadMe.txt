Zip File Contents

   1) q1.sql
   2) q2.sql
   3) q3.sql
   4) q4.sql
   5) q5.sql

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
CALL SendWatchTimeReport();

q5.sql
Displays a consolidated watch-time report
CALL SendWatchTimeReport();

If you get following Error “Procedure already exists” → run  DROP PROCEDURE IF EXISTS procedure_name;
then re-execute the script.

GitHub Repository Link:
https://github.com/parthdhawale/SSD_lab2





