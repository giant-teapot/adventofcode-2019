-- Day 1: The Tyranny of the Rocket Equation
-- https://adventofcode.com/2019/day/1

fuelRequired :: (Integral a) => a -> a
fuelRequired = (subtract 2) . (`div` 3)

moduleFuelRequirement :: (Integral a) => a -> a
moduleFuelRequirement =  sum . tail . takeWhile (>0) . iterate fuelRequired


main = do
    inStr <- getContents
    let moduleMasses = map (\x -> read x :: Int)
                     . lines
                     $ inStr
    
    putStrLn $ "Problem 1 - part 1: " 
            ++ (show . sum $ map fuelRequired moduleMasses)
    putStrLn $ "Problem 1 - part 2: " 
            ++ (show . sum $ map moduleFuelRequirement moduleMasses)
