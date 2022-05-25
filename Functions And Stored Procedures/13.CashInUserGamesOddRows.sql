CREATE FUNCTION ufn_CashInUsersGames(@gameName NVARCHAR(50))
RETURNS TABLE
AS
RETURN SELECT(SELECT SUM([Cash]) AS [SumCash]
				FROM 
					(SELECT ROW_NUMBER() OVER (PARTITION BY [g].[Name] ORDER BY [ug].[Cash] DESC) AS [Row]
					        ,[g].[Name] AS [Game Name]
                            ,[ug].[Cash]
                        FROM [UsersGames] AS [ug]
                        JOIN [Games] AS [g] ON [ug].[GameId] = [g].[Id]
						WHERE [g].[Name] = @gameName
					 ) AS [Rows]
				WHERE [Row] % 2 <> 0
			  ) AS [SumCash]