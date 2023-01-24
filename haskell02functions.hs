termoTemp :: Float -> Bool
termoTemp c = c > 37.8

hasFever :: [Float] -> [Float]
hasFever = filter termoTemp

hasFever' :: [Float] -> [Float]
hasFever' = filter (\x -> x > 37.8)

itemize :: [String] -> [String]
itemize = map (\x -> "<li>" ++ x ++ "</li>")

circArea :: Float -> Float
circArea r = pi * r^2

bigCircles :: Float -> [Float] -> [Float]
bigCircles r list = filter (\rs -> circArea rs > r) list

quarentine :: [(String,Float)] -> [(String,Float)]
quarentine = filter (\(_,c) -> c > 37.8)

agesIn :: [Int] -> Int -> [Int]
agesIn ref ano = map (\x -> ano - x) ref

adiciona :: String -> String
adiciona s = if (elem 'A' s) then "Super" ++ s else s

superNames :: [String] -> [String]
superNames = map (\a -> super a)

onlyShorts :: [String] -> [String]
onlyShorts = filter (\s -> length s < 5)
