SELECT DISTINCT
    i.identifier AS item_name,
    ic.identifier AS item_category,
    ip.identifier AS item_pocket,
    ift.flavor_text
FROM items i
JOIN item_categories ic ON i.category_id = ic.id
JOIN item_pockets ip ON ic.pocket_id = ip.id
JOIN item_fling_effects ife ON i.fling_effect_id = ife.id
JOIN item_flavor_text ift ON i.id = ift.item_id
WHERE ife.identifier IN ('burn', 'paralyze')
  AND i.fling_power IS NOT NULL
  AND ift.language_id = 9
  AND ift.version_group_id = (
      SELECT MAX(ift2.version_group_id)
      FROM item_flavor_text ift2
      WHERE ift2.item_id = i.id
        AND ift2.language_id = ift.language_id)
ORDER BY i.identifier DESC;