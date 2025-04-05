SELECT today.id as ID
FROM Weather today JOIN Weather yesterday
ON DATEDIFF(DAY, today.recordDate, yesterday.recordDate) = -1
WHERE today.temperature > yesterday.temperature;