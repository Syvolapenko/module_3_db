CREATE TABLE IF NOT EXISTS youngest_eldest_workers
(
type VARCHAR(10) not null CHECK (type IN ('YOUNGEST', 'OLDEST')),
name VARCHAR(100) not null,
birthday DATE
);



INSERT INTO youngest_eldest_workers (type, name, birthday)
SELECT 'YOUNGEST', name, birthday
FROM worker
WHERE birthday = (SELECT min(birthday) FROM worker )
UNION
SELECT  'OLDEST',  name, birthday
FROM worker
WHERE birthday = (SELECT max(birthday) FROM worker )