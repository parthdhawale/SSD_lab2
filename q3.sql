DELIMITER //
CREATE PROCEDURE AddSubscriberIfNotExists(IN subName VARCHAR(100))
BEGIN
	DECLARE subscriber_count INT DEFAULT 0;
    DECLARE new_id INT DEFAULT 0;
    SELECT COUNT(*) INTO subscriber_count
    FROM Subscribers
    WHERE SubscriberName = subName;
    
    IF subscriber_count = 0 THEN
		SELECT MAX(SubscriberID) + 1 INTO new_id FROM Subscribers;
        
	INSERT INTO Subscribers(SubscriberID, SubscriberName, SubscriptionDate)
    VALUES (new_id,subName,curdate());
    
    END IF;
END //
DELIMITER ;

CALL AddSubscriberIfNotExists('parth');

