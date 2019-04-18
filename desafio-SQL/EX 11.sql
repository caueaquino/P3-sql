


CREATE FUNCTION [dbo].[verify_users_plans_quantity_completed_in_time] () RETURNS @result_users TABLE(id_user INT)
AS
BEGIN

	INSERT INTO @result_users
		SELECT u.id FROM users AS u
		INNER JOIN
		completed_plans_in_time AS cp 
		ON cp.id_user = u.id
		WHERE u.can_create_plan = 0 AND (SELECT COUNT(id_user) FROM completed_plans_in_time WHERE u.id = id_user) >= 5

	RETURN
END

--UPDATE ATRIBUINDO 1 AO CAN_CREATE_PLAN DOS USUARIOS COM 5 OS USUARIOS RETORNADOS

DECLARE @users_result TABLE(id_user INT)

INSERT INTO @users_result 
	SELECT * FROM [dbo].[verify_users_plans_quantity_completed_in_time] ()

DECLARE cursor_result_users CURSOR FOR SELECT id_user FROM @users_result

DECLARE @id_user INT

OPEN cursor_result_users
FETCH NEXT FROM cursor_result_users INTO @id_user

WHILE @@FETCH_STATUS = 0
BEGIN 

	UPDATE users
	SET can_create_plan = 1
	WHERE id = @id_user

	FETCH NEXT FROM cursor_result_users INTO @id_user

END

DEALLOCATE cursor_result_users

