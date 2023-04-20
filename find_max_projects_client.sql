SELECT client.name, COUNT(project.id) as PROJECT_COUNT
FROM project
JOIN client ON client.id = project.client_id 
GROUP BY client.id
HAVING COUNT(project.client_id) =
(
    SELECT COUNT(ID)
    FROM project
    GROUP BY CLIENT_ID
    ORDER BY COUNT(ID) DESC
    LIMIT 1
)