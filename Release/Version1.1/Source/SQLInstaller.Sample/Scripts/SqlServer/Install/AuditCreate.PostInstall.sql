/****** Special procedure to create auditing ******/
DECLARE @table_name nvarchar(250)
DECLARE @column_name nvarchar(250)
DECLARE @ddl nvarchar(20)
DECLARE @identity int
DECLARE @sql nvarchar(4000)
DECLARE @columns nvarchar(4000)
DECLARE @column_list nvarchar(4000)
DECLARE @trigger_columns nvarchar(4000)

DECLARE curTables CURSOR FOR
	SELECT table_name
	FROM information_schema.tables
	WHERE table_type = 'BASE TABLE' AND 
		OBJECTPROPERTY (OBJECT_ID(table_name), 'IsMsShipped') = 0 AND
		table_name NOT LIKE '%Audit%'

OPEN curTables
FETCH NEXT FROM curTables INTO @table_name
WHILE @@FETCH_STATUS = 0
BEGIN			

	DECLARE curColumns CURSOR FOR
		SELECT column_name, COLUMNPROPERTY(OBJECT_ID(QUOTENAME(table_schema) + '.' + QUOTENAME(table_name)), column_name, 'IsIdentity') AS isidentity
		FROM information_schema.columns
		WHERE OBJECTPROPERTY(OBJECT_ID(QUOTENAME(table_schema) + '.' + QUOTENAME(table_name)), 'IsMSShipped') = 0
		AND data_type NOT IN ('text','ntext','image')
		AND TABLE_NAME = @table_name
		ORDER BY ordinal_position
	
	SET @columns = CHAR(39) + 'X' + CHAR(39) + ' AS AuditID,'+ CHAR(39) + 'I' + CHAR(39) + ' AS AuditCode'
	SET @column_list = 'AuditCode'
	SET @trigger_columns = ''
	OPEN curColumns
	FETCH NEXT FROM curColumns INTO @column_name, @identity
	WHILE @@FETCH_STATUS = 0
	BEGIN		
		SET @columns = @columns + ','
		SET @trigger_columns = @trigger_columns + 't.' + @column_name + ','
		SET @columns = @columns + CASE @identity WHEN 1 THEN 'CAST('+@column_name+' AS int) AS ' + @column_name ELSE @column_name END
		SET @column_list = @column_list + ','+@column_name
		FETCH NEXT FROM curColumns INTO @column_name, @identity
	END
	CLOSE curColumns
	DEALLOCATE curColumns
	SET @columns = @columns + ',getdate() AS AuditOn,SYSTEM_USER AS AuditUserName'
	SET @column_list = @column_list + ',AuditOn,AuditUserName'
	SET @sql = '
IF NOT EXISTS (SELECT * FROM information_schema.tables WHERE table_name = ' + CHAR(39) + @table_name + 'Audit' + CHAR(39) + ')
BEGIN
	SELECT ' + @columns + ' INTO dbo.' + @table_name + 'Audit FROM ' + @table_name + ' WHERE 1=2
	ALTER TABLE dbo.' + @table_name + 'Audit ALTER COLUMN 
		AuditID uniqueidentifier NOT NULL
	ALTER TABLE dbo.' + @table_name + 'Audit ADD CONSTRAINT '+@table_name+'_Sid
		DEFAULT NEWSEQUENTIALID() FOR AuditID
	ALTER TABLE dbo.' + @table_name + 'Audit ALTER COLUMN 
		AuditCode char(1) NOT NULL
	ALTER TABLE dbo.' + @table_name + 'Audit ALTER COLUMN 
		AuditOn datetime NOT NULL
	ALTER TABLE dbo.' + @table_name + 'Audit ALTER COLUMN 
		AuditUserName nvarchar(64) NOT NULL

	ALTER TABLE dbo.' + @table_name + 'Audit ADD 
		CONSTRAINT Pk_' + @table_name + 'Audit PRIMARY KEY CLUSTERED 
		(
			AuditID ASC
		)

END
'
	EXEC(@sql)

	IF EXISTS ( SELECT * FROM sysobjects so WHERE OBJECTPROPERTY(so.id, 'IsTrigger')=1 AND OBJECTPROPERTY(so.id, 'IsMSShipped')=0 AND so.name = 'Audit' + @table_name)
		SET @ddl = 'ALTER'
	ELSE
		SET @ddl = 'CREATE'

	SET @sql = @ddl + '
TRIGGER dbo.Audit' + @table_name + ' ON dbo.' + @table_name + '
FOR INSERT, UPDATE, DELETE
NOT FOR REPLICATION
AS
BEGIN
	SET NOCOUNT ON
	IF EXISTS(SELECT * FROM INSERTED)
		BEGIN
			IF EXISTS(SELECT * FROM DELETED)
				INSERT INTO dbo.' + @table_name + 'Audit 
				(' + @column_list + ')
				SELECT
					' + CHAR(39) + 'U' + CHAR(39) + ' AS AuditCode,
					' + @trigger_columns + '
					GETDATE() AS AuditOn,
					(SELECT CASE context_info WHEN 0x00 THEN SYSTEM_USER ELSE CAST(context_info AS nvarchar) END FROM master..sysprocesses WHERE spid=@@spid) AS AuditUserName
				FROM INSERTED t
			ELSE
				INSERT INTO dbo.' + @table_name + 'Audit
				(' + @column_list + ')
				SELECT
					' + CHAR(39) + 'I' + CHAR(39) + ' AS AuditCode, 
					' + @trigger_columns + '
					GETDATE() AS AuditOn,
					(SELECT CASE context_info WHEN 0x00 THEN SYSTEM_USER ELSE CAST(context_info AS nvarchar) END FROM master..sysprocesses WHERE spid=@@spid) AS AuditUserName
				FROM INSERTED t
		END
	ELSE
		INSERT INTO dbo.' + @table_name + 'Audit
		(' + @column_list + ')
		SELECT
			' + CHAR(39) + 'D' + CHAR(39) + ' AS AuditCode, 
			' + @trigger_columns + '
			GETDATE() AS AuditOn,
			(SELECT CASE context_info WHEN 0x00 THEN SYSTEM_USER ELSE CAST(context_info AS nvarchar) END FROM master..sysprocesses WHERE spid=@@spid) AS AuditUserName
		FROM DELETED t
	SET NOCOUNT OFF
END
'
	EXEC(@sql)
	FETCH NEXT FROM curTables INTO @table_name 
END
CLOSE curTables

DEALLOCATE curTables

