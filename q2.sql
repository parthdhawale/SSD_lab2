DELIMITER //
CREATE PROCEDURE GetWatchHistoryBySubscriber(IN sub_id INT)
BEGIN
	SELECT
    s.Title as 'Show Title',
    s.Genre,
    s.ReleaseYear,
    w.WatchTime AS 'Watch Time'
    FROM WatchHistory w
    JOIN Shows s ON w.ShowID = s.ShowID
    WHERE w.SubscriberID = sub_id;
END //
DELIMITER ;

CALL GetWatchHistoryBySubscriber(1);


