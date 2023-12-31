SELECT 
      p.ProductKey AS [ProductKey]
      ,p.ProductAlternateKey AS [Product Item Code]
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.EnglishProductName AS [Product Name]
	  ,pc.EnglishProductCategoryName AS [Product Category]
	  ,ps.EnglishProductSubcategoryName AS [Product SubCategory]
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,p.Color AS [Product Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,p.Size AS [Product Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,p.ProductLine AS [Product Line]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,p.ModelName AS [Product Model Name]
      --,[LargePhoto]
      ,p.EnglishDescription AS [Product Description]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,ISNULL(p.Status,'OutDated') AS [Product Status]
  FROM 
  dbo.DimProduct AS p 
  LEFT JOIN dbo.DimProductSubcategory AS ps on p.ProductSubcategoryKey = ps.ProductSubcategoryKey
  LEFT JOIN dbo.DimProductCategory AS pc on ps.ProductCategoryKey = pc.ProductCategoryKey
  ORDER BY p.ProductKey
