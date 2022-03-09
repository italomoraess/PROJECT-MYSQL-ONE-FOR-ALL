SELECT MIN(p.price) as faturamento_minimo, MAX(p.price) as faturamento_maximo, ROUND(AVG(p.price), 2) as faturamento_medio, SUM(p.price) as faturamento_total
FROM `user` as u
JOIN plan as p ON u.plan_id = p.plan_id;