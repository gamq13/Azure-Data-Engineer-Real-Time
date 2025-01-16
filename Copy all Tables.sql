select s.name as SchemaName,
	   t.name as TableName
from sys.tables t
inner join sys.schemas s
on t.schema_id = s.schema_id
where s.name = 'SalesLT'

@{concat(dataset().SchemaName,'/',dataset().TableName)}
@{concat(dataset().TableName,'.parquet')}
@item().SchemaName
@item().TableName
@{concat('SELECT * FROM ', item().SchemaName, '.', item().TableName)}
