bubblesort :: (Ord a) => [a] -> [a]
bubblesort [] = []
bubbl
bubblesort all@(f:s:xx)
    | f > s = s:f:xx
    | otherwise = 