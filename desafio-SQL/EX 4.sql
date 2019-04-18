



CREATE TRIGGER [dbo].[TG_update_last_changed_date]
ON [dbo].[users]
AFTER UPDATE
AS
BEGIN

	DECLARE @id INT

	IF (SELECT COUNT(*) FROM deleted) <> 0
		SELECT @id=id FROM deleted
		UPDATE users SET last_changed_date = GETDATE() WHERE id = @id

END
