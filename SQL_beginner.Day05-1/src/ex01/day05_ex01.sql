SET enable_seqscan TO OFF;
EXPLAIN ANALYZE
    SELECT m.pizza_name, pzr.name FROM menu m
    JOIN pizzeria pzr on m.pizzeria_id= PZR.id;
