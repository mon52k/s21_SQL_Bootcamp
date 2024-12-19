SELECT
    pz.name,
    COUNT(*) AS count_of_orders,
    ROUND(AVG(m.price), 2) AS average_price,
    MAX(m.price) AS max_price,
    MIN(m.price) AS min_price
FROM person_order po
INNER JOIN menu m ON po.menu_id = m.id
INNER JOIN pizzeria pz ON m.pizzeria_id = pz.id
GROUP BY pz.name
ORDER BY pz.name;
