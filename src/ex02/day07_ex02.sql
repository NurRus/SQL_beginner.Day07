(SELECT pz.name, count(*) AS count, 'visit' AS action_type
FROM pizzeria pz 
JOIN person_visits pv ON pz.id = pv.pizzeria_id
GROUP BY 1
LIMIT 3)
UNION
(SELECT pz.name, count(*) AS count, 'order' AS action_type
FROM pizzeria pz 
JOIN menu ON pz.id = menu.pizzeria_id
JOIN person_order po ON po.menu_id = menu.id 
GROUP BY 1
LIMIT 3)
ORDER BY 3, 2 DESC