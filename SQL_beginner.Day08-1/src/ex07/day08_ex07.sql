-- Сессия 1
SHOW TRANSACTION ISOLATION LEVEL;               --1
BEGIN;
UPDATE pizzeria SET rating = 1 WHERE id = 1;	--3
UPDATE pizzeria SET rating = 1 WHERE id = 2;	--5
COMMIT;								            --7

-- Сессия 2
SHOW TRANSACTION ISOLATION LEVEL;               --2
BEGIN;
UPDATE pizzeria SET rating = 2 WHERE id = 2;	--4
UPDATE pizzeria SET rating = 4 WHERE id = 1;	--6
COMMIT;								            --8