SELECT i.identifier, ic.identifier, ip.identifier 
FROM items i 
INNER JOIN item_categories ic 
ON i.category_id = ic.id 
INNER JOIN item_pockets ip 
ON ic.pocket_id = ip.id 
WHERE ic.identifier = 'medicine' 
OR ip.identifier = 'medicine' 
ORDER BY i.identifier;