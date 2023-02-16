USE [WineStoreDW]
GO
/****** Object:  StoredProcedure [dbo].[usp_Load_dimTerritory]    Script Date: 01.02.2023 15:24:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_Load_dimTerritory]
AS
BEGIN

	--Implements an Upsert logic for Type 1 dimensions
	--In this case the TerritoryCode is the field which is used to match the stage.Territory with dimTerritory
    MERGE [dbo].[dimTerritory] AS [Target]
        USING ( SELECT  [TerritoryCode], 
						[TerritoryName], 
						[TradeRegion], 
						[Continent] 
                FROM    [stage].[Territory]
              ) AS [Source] 
    ON  [Target].[TerritoryCode] = [Source].[TerritoryCode] --- specifies the condition
    WHEN MATCHED THEN
        UPDATE SET [Target].[TerritoryName] = [Source].[TerritoryName],
				   [Target].[TradeRegion] = [Source].[TradeRegion],
				   [Target].[Continent] = [Source].[Continent] --UPDATE STATEMENT
    
    WHEN NOT MATCHED THEN
        INSERT ([TerritoryCode], [TerritoryName], [TradeRegion], [Continent]) 
		VALUES ([Source].[TerritoryCode], [Source].[TerritoryName], [Source].[TradeRegion], [Source].[Continent]); --INSERT STATEMENT
	
END
