SELECT COUNT(DISTINCT i.id)
FROM items i
JOIN item_categories ic ON i.category_id = ic.id
JOIN item_pockets ip ON ic.pocket_id = ip.id
JOIN item_flag_map m ON m.item_id = i.id
JOIN item_flags f ON f.id = m.item_flag_id
WHERE ip.identifier = 'medicine'
  AND f.identifier = 'usable-in-battle';
  