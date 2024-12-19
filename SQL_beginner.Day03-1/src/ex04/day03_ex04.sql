WITH FemaleOrders AS (
    SELECT pizzeria.name AS pizzeria_name
    FROM menu 
    INNER JOIN pizzeria  ON pizzeria.id = menu.pizzeria_id
    INNER JOIN person_order  ON person_order.menu_id = menu.id
    JOIN person  ON person_order.person_id = person.id
    WHERE person.gender = 'female'
),
MaleOrders AS (
    SELECT  pizzeria.name AS pizzeria_name
    FROM menu 
    INNER JOIN pizzeria ON  pizzeria.id = menu.pizzeria_id
    INNER JOIN person_order ON person_order.menu_id = menu.id
    JOIN person ON person_order.person_id = person.id
    WHERE person.gender = 'male'
)
(
    SELECT pizzeria_name FROM FemaleOrders
    EXCEPT
    SELECT pizzeria_name FROM MaleOrders
)
UNION
(
    SELECT pizzeria_name FROM MaleOrders
    EXCEPT
    SELECT pizzeria_name FROM FemaleOrders
)
ORDER BY pizzeria_name;
