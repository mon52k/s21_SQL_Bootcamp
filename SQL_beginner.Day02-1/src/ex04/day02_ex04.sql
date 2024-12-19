SELECT pizza_name, name AS pizzeria_name, price
    FROM (SELECT * FROM menu
                   WHERE pizza_name='mushroom pizza' or pizza_name='pepperoni pizza')
FULL JOIN pizzeria ON pizzeria_id = pizzeria.id WHERE pizza_name IS NOT NULL
ORDER BY pizza_name, pizzeria_name 
