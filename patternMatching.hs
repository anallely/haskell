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


