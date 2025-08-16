
DELIMITER //
CREATE PROCEDURE SendWatchTimeReport()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE subId INT;

    DECLARE time_cursor CURSOR FOR
        SELECT DISTINCT SubscriberID FROM WatchHistory;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN time_cursor;
    watch_loop: LOOP
        FETCH time_cursor INTO subId;
		CALL GetWatchHistoryBySubscriber(subId);
        IF done THEN LEAVE watch_loop;
        END IF;
    END LOOP;
    
    CLOSE time_cursor;
END //
DELIMITER ;

CALL SendWatchTimeReport();