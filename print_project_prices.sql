SELECT PROJECT_ID AS NAME ,DATEDIFF(month,project.start_date , project.finish_date) * salary AS PRICE
FROM PROJECT_WORKER 
Join PROJECT ON project.id = project_worker.project_id
Join WORKER ON worker.id = PROJECT_WORKER.WORKER_ID 
GROUP BY PROJECT_ID
