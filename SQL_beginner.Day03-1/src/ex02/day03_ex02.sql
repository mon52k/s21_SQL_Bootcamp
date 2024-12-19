WITH cte_id AS (
    SELECT * FROM menu
    WHERE NOT EXISTS
        (SELECT menu_id FROM person_order WHERE menu_id = menu.id)
)
SELECT cte_id.pizza_name, cte_id.price, pizzeria.name AS pizzeria_name FROM cte_id

LEFT JOIN pizzeria ON cte_id.pizzeria_id = pizzeria.id

ORDER BY pizza_name, price;