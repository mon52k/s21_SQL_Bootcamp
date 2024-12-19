WITH cte_pizza_pep(pepperoni) AS (
    SELECT person.name AS pepperoni
    FROM person_order
    INNER JOIN person  ON person_order.person_id = person.id
    INNER JOIN menu  ON menu.id = person_order.menu_id
    WHERE person.gender = 'female' AND menu.pizza_name IN ('pepperoni pizza')
),
cte_pizza_chee(cheese) AS (
    SELECT person.name AS cheese
    FROM person_order
    INNER JOIN person  ON person_order.person_id = person.id
    INNER JOIN menu  ON menu.id = person_order.menu_id
    WHERE person.gender = 'female' AND menu.pizza_name IN ('cheese pizza')
)

SELECT person.name FROM person
   INNER JOIN cte_pizza_pep ON cte_pizza_pep.pepperoni = person.name
   INNER JOIN cte_pizza_chee ON cte_pizza_chee.cheese = person.name