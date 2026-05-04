-- View all items
SELECT * FROM items;

-- Items after 1900
SELECT * FROM items
WHERE year > 1900;

-- Count items per category
SELECT category, COUNT(*) AS total_items
FROM items
GROUP BY category;

-- Join items with creators
SELECT items.title, creators.name
FROM items
JOIN creators ON items.creator_id = creators.id;

-- Count items per country
SELECT creators.country, COUNT(items.id) AS total_items
FROM creators
JOIN items ON creators.id = items.creator_id
GROUP BY creators.country;

-- Top creators by number of items
SELECT creators.name, COUNT(items.id) AS total_items
FROM creators
JOIN items ON creators.id = items.creator_id
GROUP BY creators.name
ORDER BY total_items DESC;