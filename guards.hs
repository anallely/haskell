-- For GUARDS indentation is important. The different conditions are represented by | (pipe) followed by a boolean expression

bmiTranslate :: Double -> String
bmiTranslate bmi
  | bmi <= 18.5 = "Underweight :("
  | bmi <= 25.5 = "weeee, you are normal :)"
  | bmi <= 30.0 = "Overrweight :("  
  | otherwise = "Obese !!! :("  


bmi :: Double -> Double -> String
bmi w h
  | w / h ^ 2 <= 18.5 = "Underweight :("
  | w / h ^ 2 <= 25.5 = "weeee, you are normal :)"
  | w / h ^ 2 <= 30.0 = "Overrweight :("  
  | otherwise = "Obese !!! :("  


max' :: (Ord a) => a -> a -> a
max' a b
  | a < b = b
  | otherwise = a 


-- WHERE is used to AVOID duplication

bmi' :: Double -> Double -> String
bmi' w h
  | bmi <= 18.5 = "Underweight :("
  | bmi <= 25.5 = "weeee, you are normal :)"
  | bmi <= 30.0 = "Overrweight :("  
  | otherwise = "Obese !!! :("
  where bmi =  w / h ^ 2 


bmi'' :: Double -> Double -> String
bmi'' w h
  | bmi <= skinny = "Underweight :("
  | bmi <= normal = "weeee, you are normal :)"
  | bmi <= fat = "Overrweight :("  
  | otherwise = "Obese !!! :("
  where bmi =  w / h ^ 2 
        skinny = 18.5
        normal = 25.5
        fat = 30.0

