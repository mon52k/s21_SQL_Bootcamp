-- Сессия 1
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;				--1
SHOW TRANSACTION ISOLATION LEVEL;
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';			--3
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';			--6
COMMIT;												        --7
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';			--8


-- Сессия 2
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;				--2
SHOW TRANSACTION ISOLATION LEVEL;
UPDATE pizzeria SET rating = 3.0 WHERE name = 'Pizza Hut';	--4
COMMIT;												        --5
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';			--9