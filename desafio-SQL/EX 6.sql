



CREATE TRIGGER [dbo].[TG_update_can_create_plan]
ON [dbo].[users]
AFTER UPDATE
AS
BEGIN

	DECLARE @id INT
	DECLARE @can_create BIT

	DECLARE @id2 INT
	DECLARE @can_create2 BIT

	IF (SELECT COUNT(*) FROM deleted) <> 0
	BEGIN
		
		SELECT @id = id, @can_create = can_create_plan FROM deleted
		SELECT @id2 = id, @can_create2 = can_create_plan FROM inserted

		IF (@can_create <> @can_create2)
		BEGIN 
			INSERT INTO users_history(id_user, create_new_plan)
			VALUES(@id, @can_create2)
		END
	END
END