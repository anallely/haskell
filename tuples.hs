-- TUPLES
-- Tuples size can be considered as part of its type
-- Tuples of two elements are called "pairs"
-- In order to make a list of Tuples they must be of same size and type


-- PAIRS
-- Pairs supports fst and snd functions
-- fst(3, "Three") produces 3
-- snd(3, "Three") produces "Three"
-- zip function over two lists can produce a list of pairs
--- zip [1..5] ['A'..'Z'] produces [(1,'A'),(2,'B'),(3,'C'),(4,'D'),(5,'E')]

-- Find the right triangles abc which perimeter is 24
findRightTrianges = [ (a, b, c) | c<-[1..10], a<-[1..c], b<-[1..a], a^2+b^2==c^2, a+b+c==24 ]
-- [(8,6,10)]

