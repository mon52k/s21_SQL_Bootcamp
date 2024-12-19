INSERT INTO person_discounts (id, person_id, pizzeria_id, discount)
SELECT
    ROW_NUMBER() OVER (ORDER BY person_id, pizzeria_id) AS id,
    person_id,
    pizzeria_id,
    CASE 
        WHEN orders_cnt = 1 THEN 10.5
        WHEN orders_cnt = 2 THEN 22
        ELSE 30
    END AS discount
FROM (
    SELECT
        po.person_id,
        m.pizzeria_id,
        COUNT(po.person_id) AS orders_cnt
    FROM person_order po
    JOIN menu m ON po.menu_id = m.id
    GROUP BY po.person_id, m.pizzeria_id
) AS order_summary;

