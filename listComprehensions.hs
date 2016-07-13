boomBangs xs = [if x < 10 then "BOOM" else "BANG" | x <- xs, odd x ]

someTenToTwenty = [ x | x <-[10..20], x /= 13, x /= 15, x /= 19]

xPlusY = [x + y | x <-[1,2,3], y <-[10, 100, 1000] ]

xPlusYArgs xx yy =  [x + y | x <-xx, y <-yy]

xProdY = [x * y | x<-[2,5,10], y<-[8,10,11]]

phraseGenerator = [adj ++ " " ++ noun | adj<-["big", "green", "sad"], noun<-["airplane", "mountain", "sea"]]

length' xs = sum[1 | _ <- xs ]
--length' [1,2,3]
--3

onlyUppers st = [ c | c <- st, c `elem` ['A'..'Z']] 
--onlyUppers "no Hay lugAR comO EL hoGAr"
--"HAROELGA"

nestedListComprehension xxs = [ [ x | x <- xs, even x] | xs <- xxs  ]
--let xxs = [[1,2,3,4], [12,34,45,14], [890,4235,24]]
--[[2,4],[12,34,14],[890,24]]
