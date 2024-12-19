-- Сессия 1
SHOW TRANSACTION ISOLATION LEVEL;                           --1
BEGIN;											            --3
SELECT SUM(rating) FROM pizzeria;							--5
SELECT SUM(rating) FROM pizzeria;							--8
COMMIT;												        --9
SELECT SUM(rating) FROM pizzeria;							--10


-- Сессия 2;
SHOW TRANSACTION ISOLATION LEVEL;                           --2
BEGIN;											            --4
INSERT INTO pizzeria VALUES (10, 'Kazan Pizza', 5);     	--6
COMMIT;												        --7
SELECT SUM(rating) FROM pizzeria;							--11