-- Сессия 1
BEGIN;                                                      --1
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';    --2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';            --3
COMMIT;                                                     --5
-- Сессия 2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';            --4
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';            --6
