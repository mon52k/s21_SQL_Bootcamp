SELECT person_id p_i, count(*) as count_of_visits
FROM person_visits
GROUP BY p_i
ORDER BY count_of_visits DESC, p_i ASC;
