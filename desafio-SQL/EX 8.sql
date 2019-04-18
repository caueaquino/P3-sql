



CREATE PROCEDURE [dbo].[SP_disable_can_create_plan]
AS
BEGIN

	DECLARE cursor_users CURSOR FOR SELECT id FROM users

	DECLARE @id INT


	OPEN cursor_users
	FETCH NEXT FROM cursor_users INTO @id
	
	WHILE @@FETCH_STATUS = 0
	BEGIN 

		IF (SELECT COUNT(*) FROM plans WHERE id_user = @id AND id_status <> 2 AND DATEDIFF(MONTH, end_date, GETDATE()) >= 1) >= 1
		BEGIN

			UPDATE users 
			SET can_create_plan = 0 
			WHERE id = @id
		END

		ELSE IF (SELECT COUNT(*) FROM plans WHERE id_user = @id AND id_status <> 2 AND DATEDIFF(DAY, end_date, GETDATE()) >= 1) >= 2
		BEGIN 

			UPDATE users 
			SET can_create_plan = 0 
			WHERE id = @id
		END

		FETCH NEXT FROM cursor_users INTO @id
	END
	DEALLOCATE cursor_users
END
