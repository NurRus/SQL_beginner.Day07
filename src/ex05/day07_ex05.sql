SELECT DISTINCT pr.name FROM person_order po
JOIN person pr ON pr.id = po.person_id
ORDER BY 1;