SELECT id AS NAME, DATEDIFF(month,project.start_date , project.finish_date) AS MONTH_COUNT
FROM project
ORDER BY MONTH_COUNT DESC LIMIT 1