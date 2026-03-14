CREATE VIEW vw_shift_performance_dataset AS
SELECT
    p.production_id,
    p.date,
    s.shift_id,
    s.shift_name,
    s.start_time,
    s.end_time,
    s.supervisor_id,
    
    p.machine_id,
    m.runtime_hours,
    m.downtime_minutes,
    m.machine_status,
    m.maintenance_flag,
    
    p.operator_id,
    o.name AS operator_name,
    o.experience_level,
    o.skill_category,
    
    p.units_produced,
    p.defect_count,
    p.cycle_time_avg,
    p.shift_efficiency_score

FROM Production_Log p

LEFT JOIN Shift_Master s
ON p.shift_id = s.shift_id

LEFT JOIN Machine_Log m
ON p.machine_id = m.machine_id
AND p.shift_id = m.shift_id
AND p.date = m.date

LEFT JOIN Operator_Assignment o
ON p.operator_id = o.operator_id
AND p.shift_id = o.shift_id
AND p.date = o.date;


SELECT TOP 10 *
FROM vw_shift_performance_dataset;


SELECT COUNT(*) AS total_records
FROM vw_shift_performance_dataset;


SELECT
shift_name,
AVG(units_produced) AS avg_units
FROM vw_shift_performance_dataset
GROUP BY shift_name;