SELECT order_date,
       (SELECT
            CONCAT(person_inf.name, '(age', person_inf.age,')'))AS person_information
            FROM person_order
NATURAL JOIN
            (SELECT id AS person_id, name, age FROM person ) AS person_inf
ORDER BY order_date, name;