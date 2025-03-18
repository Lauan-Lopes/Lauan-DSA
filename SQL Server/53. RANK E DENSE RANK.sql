
SELECT [TrackId]
      ,[Name]
      ,[AlbumId]
      ,[Milliseconds]
      ,[UnitPrice]
	  ,ROW_NUMBER() OVER(ORDER BY UNITPRICE ASC) AS 'ROW_NUMBER'
	  ,RANK() OVER(ORDER BY UNITPRICE ASC) AS 'RANK'
	  ,DENSE_RANK() OVER(ORDER BY UNITPRICE ASC) AS 'DENSE_RANK'
  FROM [Chinook].[dbo].[Track]
