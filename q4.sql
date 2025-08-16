
DELIMITER //
CREATE PROCEDURE SendWatchTimeReport()
BEGIN
	DECLARE curr_sub INT DEFAULT 1;
    DECLARE max_id INT;
    DECLARE watch_count INT;
    
    SELECT max(SubscriberID) INTO max_id FROM Subscribers;
    
    time_loop: LOOP
		SELECT COUNT(*) INTO watch_count FROM WatchHistory
        WHERE SubscriberID = curr_sub;
        
        IF watch_count > 0 THEN CALL GetWatchHistoryBySubscriber(curr_sub);
        END IF;
        
        SET curr_sub = curr_sub + 1;
	END LOOP;
END //
DELIMITER ;

CALL SendWatchTimeReport();