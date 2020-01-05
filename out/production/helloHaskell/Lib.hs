module Lib
    ( fizzBuzz,
      leapYear,
      hypertension,
      hypertensionData
    ) where

fizzBuzz :: Int -> String
fizzBuzz x | x `mod` 15 == 0  = "FizzBuzz"
           | x `mod` 3  == 0  = "Fizz"
           | x `mod` 5  == 0  = "Buzz"
           | otherwise        = show x

leapYear :: Integer -> Bool
leapYear year
    | year `mod` 400 == 0 = True
    | year `mod` 100 == 0 = False
    | year `mod`   4 == 0 = True
    | otherwise           = False

three :: Float -> Float -> Bool
three sysBp diaBp
    | sysBp >= 180  = True
    | diaBp >= 120  = True
    | otherwise     = False
    
two :: Float -> Float -> Bool
two sysBp diaBp
    | sysBp >= 160 && sysBp < 180 = True
    | diaBp >= 100 && diaBp < 110 = True
    | otherwise                   = False    

one :: Float -> Float -> Bool
one sysBp diaBp
    | sysBp >= 140 && sysBp < 160 = True
    | diaBp >= 90 && diaBp < 100  = True
    | otherwise                   = False
    
hypertension :: Float -> Float -> String
hypertension sysBp diaBp
    | sysBp >= 180 || diaBp >= 120                                    = "Stage 3"
    | (sysBp >= 160 && sysBp < 180) || (diaBp >= 100 && diaBp < 110)  = "Stage 2"
    | (sysBp >= 140 && sysBp < 160) || (diaBp >= 90 && diaBp < 100)   = "Stage 1"
    | otherwise                                                       = "Normal"
    
hypertensionData :: Float -> Float -> String
hypertensionData sysBp diaBp
    | three sysBp diaBp  = "Stage 3"
    | two sysBp diaBp    = "Stage 2"
    | one sysBp diaBp    = "Stage 1"
    | otherwise          = "Normal"
    