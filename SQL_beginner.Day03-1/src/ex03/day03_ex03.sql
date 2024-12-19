WITH cte_FemaleVisits AS (
    SELECT pizzeria.name AS pizzeria_name
    FROM person_visits 
    INNER JOIN pizzeria  ON  person_visits.pizzeria_id = pizzeria.id
    INNER JOIN person  ON  person_visits.person_id =  person.id
    WHERE  person.gender = 'female'
),
cte_MaleVisits AS (
    SELECT pizzeria.name AS pizzeria_name
    FROM person_visits 
    INNER JOIN pizzeria  ON  person_visits.pizzeria_id = pizzeria.id
    INNER JOIN person  ON  person_visits.person_id =  person.id
    WHERE  person.gender = 'male'
)
(
    SELECT pizzeria_name FROM cte_FemaleVisits
    EXCEPT ALL
    SELECT pizzeria_name FROM cte_MaleVisits
)
UNION ALL
(
    SELECT pizzeria_name FROM cte_MaleVisits
    EXCEPT ALL
    SELECT pizzeria_name FROM cte_FemaleVisits
)
ORDER BY pizzeria_name;

