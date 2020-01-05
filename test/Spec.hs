import Test.Hspec
import Lib

main :: IO ()
main =
  hspec $ do
    describe "Prelude.head" $ it "returns the first element of a list" $ head [23 ..] `shouldBe` (23 :: Int)

--   fizzbuzz
    describe "fizzbuzz 1" $ it "returns number passed in" $ fizzBuzz 1 `shouldBe` ("1" :: String)
    describe "fizzbuzz 2" $ it "returns number passed in" $ fizzBuzz 2 `shouldBe` ("2" :: String)
    describe "fizzbuzz 3" $ it "returns Fizz when 3 passed in" $ fizzBuzz 3 `shouldBe` ("Fizz" :: String)
    describe "fizzbuzz 5" $ it "returns Buzz when 5 passed in" $ fizzBuzz 5 `shouldBe` ("Buzz" :: String)
    describe "fizzbuzz 15" $ it "returns FizzBuzz when 15 passed in" $ fizzBuzz 15 `shouldBe` ("FizzBuzz" :: String)
    describe "fizzbuzz 18" $ it "returns Fizz when 18 passed in" $ fizzBuzz 18 `shouldBe` ("Fizz" :: String)
    describe "fizzbuzz 20" $ it "returns Buzz when 20 passed in" $ fizzBuzz 20 `shouldBe` ("Buzz" :: String)
    describe "fizzbuzz 30" $ it "returns FizzBuzz when 30 passed in" $ fizzBuzz 30 `shouldBe` ("FizzBuzz" :: String)

--   leap year
    describe "leapYear 1996" $ it "returns True for 1996" $ leapYear 1996 `shouldBe` (True :: Bool)
    describe "leapYear 1997" $ it "returns True for 1997" $ leapYear 1997 `shouldBe` (False :: Bool)
    describe "leapYear 1900" $ it "returns True for 1900" $ leapYear 1900 `shouldBe` (False :: Bool)
    describe "leapYear 2000" $ it "returns True for 2000" $ leapYear 2000 `shouldBe` (True :: Bool)
    describe "leapYear 2020" $ it "returns True for 2020" $ leapYear 2020 `shouldBe` (True :: Bool)
    describe "leapYear 2021" $ it "returns False for 2021" $ leapYear 2021 `shouldBe` (False :: Bool)

--    hypertension
    describe "hypertension 181 121" $ it "returns Stage 3 for 181 121" $ hypertension 181 121 `shouldBe` ("Stage 3" :: String)
    describe "hypertension 180 120" $ it "returns Stage 3 for 180 120" $ hypertension 180 120 `shouldBe` ("Stage 3" :: String)
    
    describe "hypertension 170 119" $ it "returns Stage 3 for 170 119" $ hypertension 170 119 `shouldBe` ("Stage 2" :: String)
    describe "hypertension 170 120" $ it "returns Stage 3 for 170 120" $ hypertension 170 120 `shouldBe` ("Stage 3" :: String)
    describe "hypertension 180 119" $ it "returns Stage 3 for 180 119" $ hypertension 180 119 `shouldBe` ("Stage 3" :: String)
    describe "hypertension 170 109" $ it "returns Stage 3 for 170 109" $ hypertension 170 109 `shouldBe` ("Stage 2" :: String)
    describe "hypertension 160 100" $ it "returns Stage 3 for 160 100" $ hypertension 160 100 `shouldBe` ("Stage 2" :: String)
    describe "hypertension 160 90" $ it "returns Stage 3 for 160 90" $ hypertension 160 90 `shouldBe` ("Stage 2" :: String)
    
--    hypertensionData
    describe "hypertensionData 181 121" $ it "returns Stage 3 for 181 121" $ hypertensionData 181 121 `shouldBe` ("Stage 3" :: String)
    describe "hypertensionData 180 120" $ it "returns Stage 3 for 180 120" $ hypertensionData 180 120 `shouldBe` ("Stage 3" :: String)
    
    describe "hypertensionData 170 119" $ it "returns Stage 3 for 170 119" $ hypertensionData 170 119 `shouldBe` ("Stage 2" :: String)
    describe "hypertensionData 170 120" $ it "returns Stage 3 for 170 120" $ hypertensionData 170 120 `shouldBe` ("Stage 3" :: String)
    describe "hypertensionData 180 119" $ it "returns Stage 3 for 180 119" $ hypertensionData 180 119 `shouldBe` ("Stage 3" :: String)
    describe "hypertensionData 170 109" $ it "returns Stage 3 for 170 109" $ hypertensionData 170 109 `shouldBe` ("Stage 2" :: String)
    describe "hypertensionData 160 100" $ it "returns Stage 3 for 160 100" $ hypertensionData 160 100 `shouldBe` ("Stage 2" :: String)
    describe "hypertensionData 160 90" $  it "returns Stage 3 for 160 90"  $ hypertensionData 160 90 `shouldBe` ("Stage 2" :: String)
