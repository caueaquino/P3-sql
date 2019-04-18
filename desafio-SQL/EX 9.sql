


CREATE VIEW [dbo].[users_plans_status] AS
SELECT 
	u.id, 
	u.name, 
	COUNT(p.id_user) AS total_plans,
	COUNT(CASE p.id_status WHEN 2 THEN 1 ELSE NULL END) AS completed_plans,
	completed_in_time = (SELECT COUNT(id_user) FROM completed_plans_in_time WHERE u.id = id_user),
	completed_out_of_time = (SELECT COUNT(id_user) FROM completed_plans_out_of_time WHERE u.id = id_user),
	COUNT(CASE p.id_status WHEN 1 THEN 1 ELSE NULL END) AS in_progress_plans,
	COUNT(CASE p.id_status WHEN 3 THEN 1 ELSE NULL END) AS suspended_plans,
	COUNT(CASE p.id_status WHEN 4 THEN 1 ELSE NULL END) AS canceled_plans 
FROM users AS u
RIGHT JOIN
plans as p ON u.id = p.id_user
GROUP BY u.id, u.name, p.id_user

GO


