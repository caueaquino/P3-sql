



CREATE TRIGGER [dbo].[TG_update_status]
ON [dbo].[plans]
AFTER UPDATE
AS
BEGIN

	DECLARE @id INT
	DECLARE @status INT

	DECLARE @id2 INT
	DECLARE @status2 INT

	IF (SELECT COUNT(*) FROM deleted) <> 0
	BEGIN 

		SELECT @id = id, @status = id_status FROM deleted
		SELECT @id2 = id, @status2 = id_status FROM inserted

		IF (@status <> @status2)
		BEGIN 

			INSERT INTO plans_history(id_plan, id_plan_status)
			VALUES(@id2, @status2)
		END
	END
END