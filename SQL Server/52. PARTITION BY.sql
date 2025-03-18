
SELECT [TrackId]
      ,[Name]
      ,[Composer]
      ,[Milliseconds]
      ,[Bytes]
      ,[UnitPrice]
	  , ROW_NUMBER() OVER(ORDER BY MILLISECONDS ASC) AS 'ROW_NUMBER'
	  , ROW_NUMBER() OVER(PARTITION BY COMPOSER ORDER BY MILLISECONDS DESC) AS 'ROW_NUMBER_PARTITION_BY'
  FROM [Chinook].[dbo].[Track]
  WHERE Composer IS NOT NULL
