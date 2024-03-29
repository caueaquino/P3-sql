



CREATE TRIGGER [dbo].[TG_update_removido_ativado]
ON [dbo].[users]
AFTER UPDATE
AS
BEGIN 

	DECLARE @id INT
	DECLARE @removed BIT

	DECLARE @id2 INT
	DECLARE @removed2 BIT

	IF (SELECT COUNT(*) FROM deleted) <> 0 
	BEGIN
		SELECT @id = id, @removed = removed FROM deleted
		SELECT @id2 = id, @removed2 = removed FROM inserted
		
		IF (@removed <> @removed2)
		BEGIN

			INSERT INTO users_history(id_user, status)
			VALUES(@id, @removed)
		END
	END
END