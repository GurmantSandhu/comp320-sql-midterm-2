SELECT i.identifier
FROM items i
JOIN item_categories ic ON i.category_id = ic.id
WHERE ic.identifier = 'stat-boosts';

