CREATE INDEX IF NOT EXISTS idx_person_name ON person((upper(name)))

SET enable_seqscan TO OFF;
EXPLAIN ANALYSE
    SELECT * FROM person
    WHERE UPPER(name) LIKE 'KATE';
