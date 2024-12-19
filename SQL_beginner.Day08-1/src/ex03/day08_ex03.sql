-- Сессия 1
SHOW TRANSACTION ISOLATION LEVEL;                           --1
BEGIN;                          							--3
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';			--5
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';			--8
COMMIT;												        --9
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';			--10


-- Сессия 2
SHOW TRANSACTION ISOLATION LEVEL;                           --2
BEGIN;                          							--4
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';	--6
COMMIT;												        --7
SELECT * FROM pizzeria WHERE name = 'Pizza hut';            --11