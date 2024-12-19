COMMENT ON TABLE person_discounts
    IS 'Таблица содержит информацию о скидках для клиентов в каждой пиццерии.';

COMMENT ON COLUMN person_discounts.id
    IS 'Идентификатор строки (PK) - уникальный номер для каждой записи в таблице.';

COMMENT ON COLUMN person_discounts.person_id
    IS 'Идентификатор клиента - уникальный номер клиента, связанный с таблицей person.';

COMMENT ON COLUMN person_discounts.pizzeria_id
    IS 'Идентификатор пиццерии - уникальный номер пиццерии, связанный с таблицей pizzeria.';

COMMENT ON COLUMN person_discounts.discount
    IS 'Скидка - процент скидки для клиента в диапазоне от 0 до 100 для каждой пиццерии.';
