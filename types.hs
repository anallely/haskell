
--Functions can have types

removeUpperCase :: [Char] -> [Char]
removeUpperCase st = [c | c <- st, c `elem` ['a'..'z']]


addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y+ z

-- Int are bound (min and max value), Integer not
factorial:: Integer -> Integer
factorial n = product [1..n]

-- Float: Floating point with single precision
circumference :: Float -> Float
circumference r = pi * r * 2

-- Double: double precision
circumference' :: Double -> Double
circumference' r = pi * r * 2


-- Head type (generic)
-- :t head
-- [a] -> a

-- FIrst type (generic)
-- :t fst
-- (a, b) -> a


-- => means "class constraint", "instance of"
-- Eq    ==,  /=
-- Ord   >, <      (Like comparable)  -> LT, GT
-- Show  (stringable)
-- Read (parse from string)

--:: stands for 'as'  It is called type annotation


--read "4" :: Int 
-- 4

--read "4" :: Float 
-- 4.0

--read "(3, 't')" :: (Int, Char)
-- (3,'t')

-- ENUM "class constraint"
-- Has functions like succ and pred
-- Example: Bool, Char, Int...
-- ['a'..'d']  -- "abcde"
-- [LT .. GT]  -- [LT,ET,GT]
-- succ 'B'  is 'C'


-- BOUNDED "class constraint"
-- minBound, maxBound
-- minBound :: Int   produces (in my machine)  -9223372036854775808

-- NUM "class constraint"
-- :t 20  produces  20 :: Num t => t
-- Integer, Float, Double

-- FLOAT "class constraint"
-- Float, Double

-- INTEGRAL "class constraint"
-- Only integral numbers (Int, Integer)
-- fromIntegral --> fromIntegral (length [1,23,45]) + 3.2   produces 7.2

-- The Char type is an instance of many type classes, i.e Eq and Ord






























