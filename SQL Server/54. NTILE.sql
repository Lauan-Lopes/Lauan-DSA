
SELECT [TrackId]
      ,[Name]
      ,[AlbumId]
      ,[Milliseconds]
	  ,[GenreId]
      ,[UnitPrice]
	  ,ROW_NUMBER() OVER(ORDER BY UNITPRICE ASC) AS 'ROW_NUMBER'
	  ,RANK() OVER(ORDER BY UNITPRICE ASC) AS 'RANK'
	  ,DENSE_RANK() OVER(ORDER BY UNITPRICE ASC) AS 'DENSE_RANK'
	  ,NTILE(12) OVER(PARTITION BY GENREID ORDER BY UNITPRICE ASC) AS 'NTILE'
  FROM [Chinook].[dbo].[Track]
