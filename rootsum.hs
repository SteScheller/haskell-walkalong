rootsum :: Int
rootsum = length (takeWhile (< 1000) [sum (map sqrt [1 .. n]) | n <- [1 ..]]) + 1