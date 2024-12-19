WITH pizza_prices AS (
    SELECT
        m1.pizza_name,
        pz1.name AS pizzeria_name1,
        pz2.name AS pizzeria_name2,
        m1.price
    FROM menu m1
    INNER JOIN menu m2 ON m1.price = m2.price
    INNER JOIN pizzeria pz1 ON m1.pizzeria_id = pz1.id
    INNER JOIN pizzeria pz2 ON m2.pizzeria_id = pz2.id
    WHERE m1.id > m2.id
    AND m1.pizza_name = m2.pizza_name
)
SELECT * FROM pizza_prices
ORDER BY pizza_name;