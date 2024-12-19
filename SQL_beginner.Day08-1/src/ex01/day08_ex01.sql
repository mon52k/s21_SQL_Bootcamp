-- Сессия 1
SHOW TRANSACTION ISOLATION LEVEL;                               --1
BEGIN;                                                          --3
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';                --5
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut';        --7
COMMIT;                                                         --9
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';                --11


-- Сессия 2
SHOW TRANSACTION ISOLATION LEVEL;                               --2
BEGIN;                                                          --4
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';                --6
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';      --8
COMMIT;                                                         --10
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';                --12