-- Сессия 1
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;			--1
SHOW TRANSACTION ISOLATION LEVEL;
SELECT SUM(rating) FROM pizzeria;							--3
SELECT SUM(rating) FROM pizzeria;							--6
COMMIT;												        --7
SELECT SUM(rating) FROM pizzeria;							--8



-- Сессия 2
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;			--2
SHOW TRANSACTION ISOLATION LEVEL;
INSERT INTO pizzeria VALUES (11, 'Kazan Pizza2', 4);  	    --4
COMMIT;											        	--5
SELECT SUM(rating) FROM pizzeria;							--9