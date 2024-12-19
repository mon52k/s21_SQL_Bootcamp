CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
    SELECT PZ.name AS pizzeria_name
    FROM pizzeria PZ
        JOIN person_visits PV ON PZ.id = PV.pizzeria_id
        JOIN person PR ON PV.person_id = PR.id
        JOIN menu MN ON PZ.id = MN.pizzeria_id
    WHERE PV.visit_date = '2022-01-08' AND PR.name LIKE 'Dmitriy' AND MN.price < 800
    ORDER BY PZ.name;