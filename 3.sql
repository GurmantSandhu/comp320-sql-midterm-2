SELECT ip.identifier, COUNT(DISTINCT ic.id)
FROM item_pockets ip
INNER JOIN item_categories ic ON ic.pocket_id = ip.id
GROUP BY ip.id, ip.identifier
ORDER BY COUNT(DISTINCT ic.id), ip.id;