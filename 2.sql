SELECT i.identifier AS item_identifier, i.cost
FROM items i
JOIN item_categories ic ON i.category_id = ic.id
JOIN item_pockets ip ON ic.pocket_id = ip.id
WHERE ip.identifier = 'pokeballs' AND i.cost > 0
ORDER BY i.cost DESC;
