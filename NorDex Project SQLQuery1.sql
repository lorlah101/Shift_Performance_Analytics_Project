SELECT COUNT(*) AS Shift_Count FROM Shift_Master;
SELECT COUNT(*) AS Operator_Count FROM Operator_Assignment;
SELECT COUNT(*) AS Machine_Count FROM Machine_Log;
SELECT COUNT(*) AS Production_Count FROM Production_Log;
SELECT COUNT(*) AS Maintenance_Count FROM Maintenance_Records;
SELECT COUNT(*) AS Quality_Count FROM Quality_Control;
SELECT COUNT(*) AS Environment_Count FROM Environmental_Data;

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Shift_Master';

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Production_Log';

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Machine_Log';

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Operator_Assignment';

SELECT TOP 10 * FROM Shift_Master;

SELECT TOP 10 * FROM Production_Log;

SELECT TOP 10 * FROM Machine_Log;

SELECT TOP 10 * FROM Operator_Assignment;

SELECT DISTINCT shift_id
FROM Shift_Master;

SELECT DISTINCT machine_id
FROM Machine_Log;

SELECT DISTINCT operator_id
FROM Operator_Assignment;

SELECT TOP 10
p.production_id,
p.shift_id,
s.shift_name
FROM Production_Log p
JOIN Shift_Master s
ON p.shift_id = s.shift_id;

SELECT
shift_id,
COUNT(*) AS total_production_records
FROM Production_Log
GROUP BY shift_id;

SELECT
shift_id,
SUM(units_produced) AS total_units_produced
FROM Production_Log
GROUP BY shift_id
ORDER BY total_units_produced DESC;

SELECT
shift_id,
AVG(defect_count) AS avg_defects
FROM Production_Log
GROUP BY shift_id;

SELECT
shift_id,
AVG(downtime_minutes) AS avg_downtime
FROM Machine_Log
GROUP BY shift_id;


SELECT
s.shift_name,
SUM(p.units_produced) AS total_units_produced
FROM Production_Log p
JOIN Shift_Master s
ON p.shift_id = s.shift_id
GROUP BY s.shift_name
ORDER BY total_units_produced DESC;


SELECT
s.shift_name,
AVG(p.defect_count) AS avg_defects
FROM Production_Log p
JOIN Shift_Master s
ON p.shift_id = s.shift_id
GROUP BY s.shift_name
ORDER BY avg_defects DESC;

SELECT
s.shift_name,
AVG(m.downtime_minutes) AS avg_downtime
FROM Machine_Log m
JOIN Shift_Master s
ON m.shift_id = s.shift_id
GROUP BY s.shift_name
ORDER BY avg_downtime DESC;


SELECT
o.skill_category,
AVG(p.units_produced) AS avg_units_produced
FROM Production_Log p
JOIN Operator_Assignment o
ON p.operator_id = o.operator_id
GROUP BY o.skill_category
ORDER BY avg_units_produced DESC;


SELECT
AVG(m.runtime_hours) AS avg_runtime,
AVG(p.units_produced) AS avg_units_produced
FROM Machine_Log m
JOIN Production_Log p
ON m.machine_id = p.machine_id
AND m.shift_id = p.shift_id;


SELECT
date,
SUM(units_produced) AS daily_production
FROM Production_Log
GROUP BY date
ORDER BY date;