fizzbuzz :: (Integral a, Show a) => a -> [String]
fizzbuzz limit = [ mapx x | x <- [1..limit]] where
    mapx x
        | divisibleBy5 x && divisibleBy3 x = "fizz buzz"
        | divisibleBy5 x = "buzz"
        | divisibleBy3 x = "fizz"
        | otherwise = show x
        where
            divisibleBy5 x = x `mod` 5 == 0
            divisibleBy3 x = x `mod` 3 == 0

fizzbuzz' :: (Integral a, Show a) => a -> [String]
fizzbuzz' limit = [ mapx x | x <- [1..limit]] where
    mapx x = 
        let by5 = x `mod` 5 == 0
            by3 = x `mod` 3 == 0
        in (if by3 then "fizz" else "") ++ (if by5 then "buzz" else "") ++ (if not(by5 || by3) then show x else "")