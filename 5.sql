SELECT COUNT(DISTINCT i.id)
FROM items i
JOIN item_flag_map m ON m.item_id = i.id
JOIN item_flags f ON f.id = m.item_flag_id
WHERE f.identifier = 'usable-in-battle';