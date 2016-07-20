-- Pattern matching is made from top to bottom

lucky :: Int -> String
lucky 7 = "Yei, you are a winner"
lucky x = "No luck for today!"

inRange :: Int -> Bool
inRange 1 = True
inRange 2 = True
inRange 3 = True
inRange 4 = True
inRange x = False

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial(n - 1)

-- We should always include a catchall Pattern at the end. Avoid the crash!!

getName :: Char -> String
getName 'a' = "Ana"
getName 'b' = "Beto"
getName 'c' = "Carla"

-- Pattern matching with Tuples

addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

--ghci>>addVectors (2,3) (3.1, 4.0)
--(5.1,7.0)

-- Whatever is "_"
first :: (a, b, c) -> a
first (x, _, _) = x


second :: (a, b, c) -> b
second (_, y, _) = y


third :: (a, b, c) -> c
third (_, _, z) = z

--ghci>>first ("ana", 23, 'h')
--"ana"
--ghci>>second ("ana", 23, 'h')
--23
--ghci>>third ("ana", 23, 'h')
--'h'

-- PATTERN MATCHING ON LISTS AND LIST COMPREHENSIONS
-- x:xs pattern is used often 
--We want to bind something to several variables, so we use ()

head' :: [a] -> a
head' [] = error "No head on empty lists"
head' (x:_) = x    
-- ghci>>head' []
-- *** Exception: No head on empty lists
-- CallStack (from HasCallStack):
--   error, called at patternMatching.hs:56:12 in main:Main
-- ghci>>head [1,2,3,4]
-- 1

verbose :: (Show a) => [a] -> String
verbose [] = "This is an empty list"
verbose (x:[]) = "This list has only one element: " ++ show x
verbose (x:y:[]) = "This list has two elements: " ++ show x ++ "and " ++ show y
verbose (x:y:_) = "This list has more than two elements, but the first and second are " ++ show x ++ "and " ++ show y


friendOfThree :: [a] -> String
friendOfThree(x:y:z:[]) = "Yes i am"
-- ghci>>friendOfThree [1,2,3,4]
-- "*** Exception: patternMatching.hs:74:1-36: Non-exhaustive patterns in function friendOfThree
-- 
-- ghci>>friendOfThree [1,2,3]
-- "Yes i am"

-- AS PATTERNS
-- It is a pattern matching where you can continue make reference to the original whole item
-- xs@(x,y,_)
firstLetter :: String -> String
firstLetter "" = "empty :("
firstLetter all@(x:xs) = "The first letter for " ++ all ++ " is " ++ [x]
-- ghci>>firstLetter ""
-- "empty :("
-- ghci>>firstLetter "Anita lava la tina"
-- "The first letter for Anita lava la tina is A"











