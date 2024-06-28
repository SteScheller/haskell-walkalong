mergesort :: (Ord a) => [a] -> [a]
mergesort [] = []
mergesort [a] = [a]
mergesort xs
    let (fl:tl) = xs
        (fr:tr) = xs
    | fl <= fr = fl ++ fr 
    | otherwise = 