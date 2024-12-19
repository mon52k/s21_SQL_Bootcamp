CREATE UNIQUE INDEX IF NOT EXISTS idx_menu_unique ON menu(pizzeria_id, pizza_name);

SET enable_seqscan TO OFF;
EXPLAIN ANALYSE
SELECT pizzeria_id, pizza_name FROM menu
WHERE pizzeria_id BETWEEN 5 AND 7
ORDER BY pizzeria_id DESC