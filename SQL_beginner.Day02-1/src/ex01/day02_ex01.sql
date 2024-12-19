SELECT days::DATE AS missing_date
FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') AS days
LEFT JOIN (
    SELECT visit_date
    FROM person_visits
    WHERE (person_id = 1 OR person_id = 2)
      AND visit_date BETWEEN '2022-01-01' AND '2022-01-10'
) AS DATA ON days = DATA.visit_date
WHERE (DATA.visit_date IS NULL)

ORDER BY days;
