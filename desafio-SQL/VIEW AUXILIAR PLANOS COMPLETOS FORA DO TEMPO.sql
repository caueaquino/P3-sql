



CREATE VIEW [dbo].[completed_plans_out_of_time] AS
SELECT p.id_user, ph.id_plan, MAX(date) AS completed_date FROM plans AS p 
INNER JOIN 
plans_history AS ph ON ph.id_plan = p.id 
WHERE p.id_status = 2 AND  DATEDIFF(DAY, P.end_date, ph.date) >= 1 
GROUP BY p.id_user, ph.id_plan
GO


