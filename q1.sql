DELIMITER //
CREATE PROCEDURE ListAllSubscribers()
BEGIN
	DECLARE Done INT DEFAULT False;
    DECLARE subscriber_name VARCHAR(100);
    
    DECLARE cursor_subscriber CURSOR FOR
		SELECT SubscriberName FROM Subscribers;
        
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET Done = True;
    
    OPEN cursor_subscriber;
    
    read_loop : LOOP
		FETCH cursor_subscriber INTO subscriber_name;
        IF Done THEN
			LEAVE read_loop;
		END IF;
        
        SELECT subscriber_name AS 'Subscriber Name';
	END LOOP;
    
    CLOSE cursor_subscriber;
END //
DELIMITER ;

CALL ListAllSubscribers();
