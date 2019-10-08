use AdventureWorks2017

Create table SpaceUsed
(
	TableName	Nvarchar(200),
	TotalRows	Nvarchar(200),
	Reserved	Nvarchar(200),
	TableData	Nvarchar(200),
	Index_Size	Nvarchar(200),
	Unused		Nvarchar(200)

)


DECLARE @fullname varchar(200) = (select '[' + Schema_Name(SCHEMA_ID) +'].['+ name +']'FROM sys.tables WHERE name = 'Deparment')

Insert SpaceUsed Exec sp_spaceused @fullname

Select COUNT(*) As TotalRowCount from SpaceUsed

Truncate table SpaceUced

