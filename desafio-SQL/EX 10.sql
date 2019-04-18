

CREATE PROCEDURE [dbo].[filter_plans_user] @list_filter AS table_filter READONLY
AS
BEGIN

	SELECT pu.id, 
		   pu.plan_name, 
		   pu.responsible_name, 
		   pu.start_date, 
		   pu.end_date,
		   pu.interested_users 
	FROM plan_user_and_interested_users AS pu
	INNER JOIN
	@list_filter AS lf
	ON lf.id_plan = pu.id AND DATEDIFF(DAY, lf.start_data, pu.start_date) = 0 AND DATEDIFF(DAY, lf.end_date, pu.end_date) = 0

END
