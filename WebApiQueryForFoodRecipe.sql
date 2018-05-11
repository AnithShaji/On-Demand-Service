----LIST ALL FOOD RECIPE (GET)
 SELECT *
FROM   FoodRecipe 

 ----RECIPE BASED ON CULTURE (GET)
SELECT FoodName, Description,Recepie,FoodType,EatingTime,Chef,TotalCookTime,
DifficultyLevel
FROM   FoodRecipe FR
       INNER JOIN Region RG
         ON FR.RegionID = RG.RegionID

----RECIPE BASED ON TYPE (GET)
 SELECT FoodName,Description,Recepie,EatingTime,Chef,TotalCookTime,
DifficultyLevel,RegionID
FROM   FoodRecipe FR WHERE FoodType = 'VEG'

 ----RECIPE BASED ON TIME (GET)

SELECT FoodName,Description,Recepie,Chef,TotalCookTime,DifficultyLevel,
RegionID,FoodType
FROM   FoodRecipe FR WHERE EatingTime = 'MOR'

  ----RECIPE BASED ON ALL ABOVE FILTERS (GET)
SELECT FoodName,Description,Recepie,FoodType,EatingTime,Chef,
TotalCookTime,DifficultyLevel
FROM   FoodRecipe FR 
       INNER JOIN Region RG
         ON FR.RegionID = RG.RegionID
		 WHERE EatingTime='MOR' AND FoodType = 'VEG'
